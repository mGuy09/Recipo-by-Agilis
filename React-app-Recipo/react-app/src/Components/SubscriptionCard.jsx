import React from 'react'

const SubscriptionCard = ({ title, price, description, isMiddle }) => {
  return (
    <div className={isMiddle ? 'bg-emerald-500 text-white border-2 rounded-xl border-black lg:scale-100 flex flex-col items-center w-[350px] px-8 py-16 hover:scale-110 duration-300' :'bg-slate-200 border-2 rounded-xl border-black flex flex-col items-center w-[350px] px-8 py-16 lg:scale-95 hover:scale-110 duration-300'}>
        <h1 className='text-2xl font-normal my-5'>{title}</h1>
        <h2 className='text-lg font-thin my-2'>{description}</h2>
        <h3 className='text-xl font-normal my-5'>{price}</h3>
    </div>
  )
}

export default SubscriptionCard