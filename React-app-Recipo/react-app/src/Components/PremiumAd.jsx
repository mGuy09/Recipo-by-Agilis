import React from 'react'
import { IoMdStar } from 'react-icons/io'
import { Link } from 'react-router-dom'

const PremiumAd = () => {
  return (
    <div className='bg-gradient-to-br from-emerald-600 via-emerald-900 to-black text-white p-10 flex justify-around items-center'>
        <div className='flex flex-col gap-7'>
            <h1 className='text-3xl font-thin py-5 pr-5'>A new way to experience <span className='font-medium text-emerald-300'>Recipo</span></h1>
            <p className='text-lg font-thin flex gap-2 items-center'><IoMdStar size={25} className='text-emerald-300'/>Want to see all the Premium recipes?</p>
            <p className='text-lg font-thin flex gap-2 items-center'><IoMdStar size={25} className='text-emerald-300'/>Open the gates to new horizons with <span className='text-emerald-300 font-medium'>Recipo Premium</span>.</p>
        </div>
        <Link to={'/Subscriptions'} className='bg-emerald-500 px-4 py-4 hover:bg-emerald-400 duration-150 active:duration-75 hover:scale-105 active:bg-emerald-700 rounded-full flex gap-2 items-center font-medium z-10'><IoMdStar size={21}/>Get Premium</Link>
    </div>
  )
}

export default PremiumAd