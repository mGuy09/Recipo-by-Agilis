import React from 'react'
import { FaSearch } from 'react-icons/fa'
import IngredientsFilter from '../Components/IngredientsFilter'
import IngredientsSection from '../Components/IngredientsSection'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'

const Ingredients = () => {
  return (
    <>
    <PremiumAddRecipes />
    <IngredientsFilter />
    <div className='border-gray-400 border-2 mx-10 md:mx-32 lg:mx-52 px-3 py-2 my-10 flex items-center rounded-full'>
    <FaSearch size={15} className='text-gray-400 mr-1'/>
    <input className='px-2 w-full outline-none' placeholder='Search' type="search" />
    </div>
    <IngredientsSection />
    </>
  )
}

export default Ingredients