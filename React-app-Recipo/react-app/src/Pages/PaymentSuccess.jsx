import axios from 'axios'
import React from 'react'
import { useState } from 'react'
import {BsCheck2Circle} from 'react-icons/bs'
import { useNavigate } from 'react-router'

const PaymentSuccess = () => {
  const navigate = useNavigate()

  

  // React.useEffect(()=>{
  //   async function fetchdata(){
  //     await axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
  //       console.log(res.data)
  //     setPremium(res.data.roles.includes('SubscribedUser'))
  //     setEmail(res.data.emailAddress)
  //   })
  //   }
  //   fetchdata()
  // },[])
  React.useEffect(()=>{
    // const data =  {email: email, role: 'SubscribedUser'}
    // if(isPremium == false) axios.post('https://localhost:7291/api/Setup/AddUserToRole',data, {withCredentials: true}).then(res => console.log(res))
    setTimeout(()=>{
      navigate('/Dashboard', {replace: true})
    },5000)
  },[])
  return (
    <div className='flex justify-center'>
    <div className='flex justify-center items-center  w-[80%] h-[80vh] m-10 border-4 rounded-2xl border-gray-300'>
        <h1 className='flex gap-3 items-center text-3xl font-medium'>Payment Confirmed <BsCheck2Circle size={35} className='text-green-600'/></h1>
        <p>Redirecting...</p>
    </div>
    </div>
  )
}

export default PaymentSuccess