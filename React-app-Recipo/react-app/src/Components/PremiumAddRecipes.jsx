import React from 'react'
import { Link } from 'react-router-dom'
import {IoMdStar} from 'react-icons/io'

const PremiumAddRecipes = () => {
  return (
    <div className='text-white bg-gradient-to-r from-emerald-900 via-black to-emerald-700 p-10 flex justify-around lg:gap-96 items-center py-16 z-10'>
        <div className='flex justify-start text-xl font-thin flex-col cursor-default'>
        
            <p className='flex flex-row text-xs sm:text-base lg:text-lg'><IoMdStar size={24} className='text-emerald-500 mr-2'/> Want to show your cooking skills to the world?</p>
        <p className='flex flex-row text-xs sm:text-base lg:text-lg'> Add your recipe so others could cook your recipe at their home</p>
        
        </div>
        <Link className='bg-emerald-500 text-white py-4 px-6 rounded-full text-xs sm:text-base lg:text-lg font-medium flex items-center hover:bg-emerald-400 ease-linear duration-200 active:bg-emerald-700 hover:duration-0' to='' ><IoMdStar size={18} className='mr-2'/> Add Recipe</Link>
    </div>
  )
}

export default PremiumAddRecipes