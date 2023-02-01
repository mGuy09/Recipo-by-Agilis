import axios from 'axios'
import { useAtom } from 'jotai'
import React from 'react'
import { FaSearch } from 'react-icons/fa'
import { useParams, useNavigate } from 'react-router'
import IngredientsFilter from '../Components/IngredientsFilter'
import IngredientsSection from '../Components/IngredientsSection'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'
import { SelectedIngredients } from '../State'

const Ingredients = () => {
  const FilterRef = useParams()

  const [filter, setFilter] = React.useState(FilterRef.id)
  const [search, setSearchFilter] = React.useState('')
  const [selectedIngredients, setSelectedIngredients] = useAtom(SelectedIngredients)
  localStorage.removeItem('ingredients')
  const [isFocused, setFocus] = React.useState(false)

  
  const navigate = useNavigate()
  React.useEffect(()=>{
    axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
    }).catch((reason)=>{
      reason.response.status !== 200 && navigate('/Login')
    })
  },[])
  

  const HandleCallback = (childData) => {
      setFilter(childData)
  }
  const SearchFilter = (e) => {
    setSearchFilter(e.target.value)
  }
  const GetRecipes=()=>{
    localStorage.setItem('ingredients', JSON.stringify(selectedIngredients))
    navigate('/Recipes')
  }
  
  const HandleSelectedAmout = (childData) => {
    setSelectedIngredients(childData)
  }
  const onFocus = (e)=>{
    setFocus(true)
  }
  const outOfFocus=()=>{
    setFocus(false)
  }
  
  return (
    <div className='will-change-auto'>
      <PremiumAddRecipes />
      <IngredientsFilter parentCallback={HandleCallback} FilterRef={FilterRef}/>
      <div className='flex justify-center flex-col items-center gap-5 lg:flex-row-reverse lg:justify-around p-5'>
        <div className='border-gray-400  border-2 px-3 py-2 w-[80%] lg:w-[20rem] flex items-center rounded-full'>
          <FaSearch size={15} className={!isFocused?'text-gray-400  mr-1': 'text-gray-900 mr-1'}/>
          <input className='px-2 w-full outline-none focus:placeholder:text-gray-300 autofill:hidden' placeholder='Search' onBlur={outOfFocus} onFocus={onFocus}  onChange={SearchFilter} type="search" />
        </div>
        <div className={selectedIngredients.length > 1? 'visible':'invisible'}>
          <button onClick={GetRecipes} className='bg-orange-500 rounded-full shadow-md py-3 px-6 text-white hover:bg-orange-400 duration-150 active:bg-orange-700 font-medium '>Get Recipes</button>
        </div>
      </div>
      <IngredientsSection ParentCallback={HandleSelectedAmout} filter={filter} search={search}/>
    </div>
  )
}

export default Ingredients