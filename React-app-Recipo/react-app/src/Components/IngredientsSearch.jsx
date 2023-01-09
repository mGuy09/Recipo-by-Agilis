import React from 'react'
import { FaSearch } from 'react-icons/fa'

const IngredientsSearch = () => {
  return (
    
    <div className='border-gray-400 border-2 mx-10 md:mx-32 lg:mx-52 px-3 py-2 my-10 flex items-center rounded-full'>
    <FaSearch size={15} className='text-gray-400 mr-1'/>
    <input className='px-2 w-full outline-none' placeholder='Search' type="search" />
    </div>
  )
}

export default IngredientsSearch