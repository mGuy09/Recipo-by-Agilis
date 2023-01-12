import React from 'react'
import { FaSearch } from 'react-icons/fa'
import IngredientsFilter from '../Components/IngredientsFilter'
import IngredientsSection from '../Components/IngredientsSection'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'

const Ingredients = () => {
  const [filter, setFilter] = React.useState(0)
  const [search, setSearchFilter] = React.useState('')
  
  const HandleCallback = (childData) => {
    setFilter(childData)
  }
  const SearchFilter = (e) => {
    setSearchFilter(e.target.value)
  }
  
  return (
    <>
    <PremiumAddRecipes />
    <IngredientsFilter parentCallback={HandleCallback}/>
    <div className='border-gray-400 border-2 mx-10 md:mx-32 lg:mx-52 px-3 py-2 my-10 flex items-center rounded-full'>
    <FaSearch size={15} className='text-gray-400 mr-1'/>
    <input className='px-2 w-full outline-none' placeholder='Search' onChange={SearchFilter} type="search" />
    </div>
    <IngredientsSection filter={filter} search={search}/>
    </>
  )
}

export default Ingredients