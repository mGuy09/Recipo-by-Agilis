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
  const onSubmit = (e) => {
    e.preventDefault()
    console.log(e)
    axios.post('https://localhost:7291/api/Stripe/customer/add', {
      "email": email,
      "name": userName,
      "creditCard": {
      }
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
    <div className='flex justify-center items-center h-[80vh] gap-5'>
      <div className='flex p-10 w-[30%] gap-5'>
      <div>
      <input type="radio" id='monthly' value={1} name='subscription' checked className='hidden peer' />
      <label htmlFor="monthly" className='flex flex-col pr-10 pl-3 peer-checked:shadow-lg py-6 border-2 duration-150 border-gray-300 rounded-xl peer-checked:border-emerald-900 peer-checked:bg-emerald-500 peer-checked:text-white peer-checked:hover:bg-emerald-700 hover:bg-gray-200'>
        <p className='text-2xl font-medium'>Monthly</p>
        <p className='text-lg font-thin'>Recurring payment monthly for Recipo Premium</p>
      </label>
      </div>
      <div>
      <input type="radio" id='yearly' value={2} name='subscription' className='hidden peer' />
      <label htmlFor="yearly" className='flex flex-col pr-10 pl-3 py-6 border-2 peer-checked:shadow-lg duration-150 border-gray-300 rounded-xl peer-checked:border-emerald-900 peer-checked:bg-emerald-500 peer-checked:text-white peer-checked:hover:bg-emerald-700 hover:bg-gray-200'>
        
          <p className='text-2xl font-medium'>Yearly</p>
        <p className='text-lg font-thin'>Recurring payment yearly for Recipo Premium</p>
      </label>
      </div>
      </div>
      <div className='w-[30%]'>
        <form onSubmit={onSubmit} className='flex flex-col gap-10 '>

          <input type="text" maxLength={16} name='card' placeholder='Credit Card Number' className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input type="month" name="" id="" className='px-2 py-1 border border-gray-300 rounded-full' />
          <input type="number"  maxLength={3} placeholder='3-digit CVV' className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input type="text" placeholder="Full Name" className='px-2 py-1 border border-gray-300 rounded-full'/>
          <button type='submit' className='bg-orange-500 px-4 py-4 rounded-full hover:bg-orange-400 active:bg-orange-700 duration-150 shadow-lg active:shadow-md'>Pay</button>
        </form>
      </div>
    </div>
  )
}

export default Checkout