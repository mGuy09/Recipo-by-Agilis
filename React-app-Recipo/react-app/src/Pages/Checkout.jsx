import React from 'react'
import { useEffect } from 'react'
import axios from 'axios'
import { useState } from 'react'
import { useNavigate } from 'react-router'

const Checkout = () => {
  const [userName, setUsername] = useState();
  const [email, setEmail] = useState();
  const [amount, SetAmount] = useState();

  const navigate = useNavigate();

  useEffect(() => {
    axios.get('https://localhost:7291/api/Users/GetUser', { withCredentials: true }).then(res => {
      setUsername(res.data.username)
      setEmail(res.data.emailAddress)
    })
      .catch(reason => reason.response.status === 401 && navigate('/Login'))
  })
  const amountHandler = (e) => {
    SetAmount(parseInt(e.target.dataset.amount))
  }
  const onSubmit = (data) => {
    axios.post('https://localhost:7291/api/Stripe/customer/add', {
      "email": email,
      "name": userName,
      "creditCard": data
    }, { withCredentials: true }).then(res => {
      axios.post('https://localhost:7291/api/Stripe/payment/add', {
        customerId: res.data.customerId,
        receiptEmail: email,
        description: "Subscription payment succeeded",
        currency: "EURO",
        amount: amount
      }, { withCredentials: true }).then(response => {
        console.log(response)
      })
    })
  }

  return (
    <div>
      <div>
        <button></button>
        <button></button>
      </div>
    </div>
  )
}

export default Checkout