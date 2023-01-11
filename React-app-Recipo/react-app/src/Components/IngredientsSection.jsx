import React, { useEffect, useState } from 'react'
import IngredientLabel from './IngredientLabel'
import axios from 'axios'
import { FaTruckLoading } from 'react-icons/fa'


const  IngredientsSection = () => {
  const [ingredientsList, setIngredients] = useState([])
  useEffect(()=>{
    axios.get('https://localhost:7291/api/Ingredients').then((res) => {
      setIngredients(res.data)
    })
    
  }, [])
  console.log(ingredientsList)
  return (
    <div className='flex flex-wrap gap-6 p-10'>
        {ingredientsList == [] ? <h1>loading...</h1> : (ingredientsList.map((item)=>
        <IngredientLabel text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
          
        ))}
        
    </div>
  )
}

export default IngredientsSection