import React, { useEffect, useState } from 'react'
import IngredientLabel from './IngredientLabel'
import axios from 'axios'


const  IngredientsSection = ({filter}) => {
  const [ingredientsList, setIngredients] = useState([])
  useEffect(()=>{
    axios.get('https://localhost:7291/api/Ingredients').then(res => {
      setIngredients(res.data)
    })
    
  }, [])
  console.log(ingredientsList)
  ingredientsList.forEach((item) => console.log(item))

  let FilteredIngredients = filter != 0? ingredientsList.filter(item => item.CategoryId === filter) : ingredientsList
  return (
    <div className='flex flex-wrap gap-6 p-10'>
        {ingredientsList == [] ? <h1>loading...</h1> : (FilteredIngredients.map((item)=>
        <IngredientLabel text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
        
        ))}
        
    </div>
  )
}

export default IngredientsSection