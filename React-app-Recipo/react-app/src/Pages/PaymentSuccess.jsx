import React from 'react'
import {BsCheck2Circle} from 'react-icons/bs'

const PaymentSuccess = () => {
  return (
    <div className='flex justify-center'>
    <div className='flex justify-center items-center  w-[80%] h-[80vh] m-10 border-4 rounded-2xl border-gray-300'>
        <h1 className='flex gap-3 items-center text-3xl font-medium'>Payment Confirmed <BsCheck2Circle size={35} className='text-green-600'/></h1>
    </div>
    </div>
  )
}

export default PaymentSuccess