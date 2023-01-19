import React from 'react'
import Checkout from '../Pages/Checkout'
const SubscriptionCard = ({ title, price, description, isMiddle }) => {

  return (
    <div className={isMiddle ? 'bg-emerald-500 cursor-pointer text-white border-2 rounded-xl border-black lg:scale-100 flex flex-col items-center w-[350px] lg:w-[320px] xl:w-[350px] px-8 py-16 hover:scale-110 duration-300 active:scale-105 active:bg-emerald-800' : 'bg-slate-200 active:bg-slate-500 active:scale-105 cursor-pointer border-2 rounded-xl border-black flex flex-col items-center w-[350px] lg:w-[320px] xl:w-[350px] px-8 py-16 lg:scale-95 hover:scale-110 duration-300'}>
      <h1 className='text-xl lg:text-2xl font-normal my-5'>{title}</h1>
      <h2 className='text-base lg:text-lg font-thin my-2'>{description}</h2>
      <h3 className='text-lg lg:text-xl font-normal my-5'>{price}</h3>
      
    </div>
  )
}

export default SubscriptionCard