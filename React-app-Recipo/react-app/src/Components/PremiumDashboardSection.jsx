import React from 'react'
import { IoMdStar } from 'react-icons/io'
import { Link } from 'react-router-dom'

const PremiumDashboardSection = () => {
  return (
    <div className='bg-black p-10 flex justify-around items-center gap-32'>
        <h1 className='text-white text-xl font-thin flex gap-2 flex-wrap'>Recipo is better when <span className='text-emerald-500 font-medium'>Green</span> so explore and enjoy every feature we provide </h1>
        <Link className='bg-emerald-500 text-white py-4 px-6 rounded-full text-xs sm:text-base lg:text-lg font-medium flex items-center hover:scale-105 hover:bg-emerald-400 ease-linear duration-150 active:bg-emerald-700' to='' ><IoMdStar size={18} className='mr-2'/> Add Recipe</Link>
    </div>
  )
}

export default PremiumDashboardSection