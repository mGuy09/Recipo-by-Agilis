import React from 'react'
import { useEffect } from 'react'
import axios from 'axios'
import { useState } from 'react'
import { useNavigate } from 'react-router'
import { usePaymentInputs } from 'react-payment-inputs'

const Checkout = () => {
  const [userName, setUsername] = useState();
  const [email, setEmail] = useState();
  const [details, setDetails] = useState()
  const [card, setCard] = useState();
  const [expirationDate, setExpiration] = useState()
  const [cvc, setCvc] = useState()
  const [isDone, setDone] = useState(false)
  const [amount, SetAmount] = useState();

  const { meta, getCardNumberProps, getExpiryDateProps, getCVCProps } = usePaymentInputs()
  const navigate = useNavigate();

  useEffect(() => {
    axios.get('https://localhost:7291/api/Users/GetUser', { withCredentials: true }).then(res => {
      setUsername(res.data.username)
      setEmail(res.data.emailAddress)
    })
      .catch(reason => reason.response.status === 401 && navigate('/Login'))
  })
  const amountHandler = (e) => {
    SetAmount(parseInt(e.target.value))
  }
  const onSubmit = async (e) => {
    e.preventDefault()
    setExpiration((prev)=>{
      prev.split(' / ')
    })
    console.log(expirationDate)
    await axios.post('https://localhost:7291/api/StripeContoller/customer/add', {
      email: email,
      name: userName,
      creditCard: {
        name: e.target[3].value,
        cardNumber: card,
        expirationYear: `20${expirationDate[5]}${expirationDate[6]}`,
        expirationMonth: `${expirationDate[0]}${expirationDate[1]}`,
        cvc: cvc
      }
    }, {withCredentials: true }).then(res => {
      console.log(res.data)
      setDetails(res.data.customerId)
      console.log(details)
      setDone(true)
    })
  }

  useEffect(()=>{
    if(isDone){
      axios.post('https://localhost:7291/api/StripeContoller/payment/add', {
          customerId: details,
          receiptEmail: email,
          description: "Subscription payment succeeded",
          currency: "eur",
          amount: amount
        }, { withCredentials: true }).then(response => {
          console.log(response)
          setDone(false)
        })
    }
  }, [isDone])

  const handleChangeCardNumber = (e) =>{
    setCard(e.target.value)
  }
  const handleChangeExpiryDate = (e) =>{
    console.log(e.target.value)
    setExpiration(`${e.target.value}`)
    
  }
  const handleChangeCVC = (e) =>{
    setCvc(e.target.value)
  }
  

  return (
    <div className='flex justify-center items-center h-[80vh] gap-5'>
      <div className='flex p-10 w-[30%] gap-5'>
      <div>
      <input type="radio" id='monthly' onChange={amountHandler} value={7999} name='subscription' className='hidden peer' />
      <label htmlFor="monthly" className='flex flex-col pr-10 pl-3 peer-checked:shadow-lg py-6 border-2 duration-150 border-gray-300 rounded-xl peer-checked:border-emerald-900 peer-checked:bg-emerald-500 peer-checked:text-white peer-checked:hover:bg-emerald-700 hover:bg-gray-200'>
        <p className='text-2xl font-medium'>Monthly</p>
        <p className='text-lg font-thin'>Recurring payment monthly for Recipo Premium</p>
      </label>
      </div>
      <div>
      <input type="radio" id='yearly' onChange={amountHandler} value={799900} name='subscription' className='hidden peer' />
      <label htmlFor="yearly" className='flex flex-col pr-10 pl-3 py-6 border-2 peer-checked:shadow-lg duration-150 border-gray-300 rounded-xl peer-checked:border-emerald-900 peer-checked:bg-emerald-500 peer-checked:text-white peer-checked:hover:bg-emerald-700 hover:bg-gray-200'>
        
          <p className='text-2xl font-medium'>Yearly</p>
        <p className='text-lg font-thin'>Recurring payment yearly for Recipo Premium</p>
      </label>
      </div>
      </div>
      <div className='w-[30%]'>
        <form onSubmit={onSubmit} className='flex flex-col gap-10 '>
          {/* <input type="credit" name='card' placeholder='Credit Card Number' onChange={handleCard} className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input type="month" name="exp" id="" className='px-2 py-1 border border-gray-300 rounded-full' />
          <input type="text" name='cvv' maxLength={3} placeholder='3-digit CVV' className='px-2 appearance-none py-1 border border-gray-300 rounded-full'/> */}

          <input {...getCardNumberProps({ onChange: handleChangeCardNumber })}  className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input {...getExpiryDateProps({ onChange: handleChangeExpiryDate })}  className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input {...getCVCProps({ onChange: handleChangeCVC })}  className='px-2 py-1 border border-gray-300 rounded-full'/>
          <input type="text" name='fullname' placeholder="Full Name" className='px-2 py-1 border border-gray-300 rounded-full'/>
          {meta.isTouched && meta.error && <span>Error: {meta.error}</span>}
          <button type='submit' className='bg-orange-500 px-4 py-4 rounded-full hover:bg-orange-400 active:bg-orange-700 duration-150 shadow-lg active:shadow-md'>Pay</button>
        </form>
      </div>
    </div>
  )
}

export default Checkout