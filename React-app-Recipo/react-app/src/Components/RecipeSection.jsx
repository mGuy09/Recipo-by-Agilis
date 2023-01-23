import axios from 'axios'
import { useAtom } from 'jotai'
import React, { useState } from 'react'
import { Link } from 'react-router-dom'
import { SelectedIngredients, SelectedRecipe } from '../State'
import RecipePageCard from './RecipePageCard'

const RecipeSection = () => {
    const [recipes, setRecipes] = useState([])
    const [selectedIngredients] = useAtom(SelectedIngredients)
    const [selectedRecipe, setSelectedRecipe] = useAtom(SelectedRecipe)
    React.useEffect(()=>{
        axios.post(`https://localhost:7291/api/Recipes/IngredientsinRecipe`, selectedIngredients).then(res => {
            console.log(res.data.data)
          setRecipes(res.data.data)
        })
      },[])
    React.useEffect(()=>{
      console.log(selectedRecipe)
    },[selectedRecipe])
  return (
    <div>
        <div className='px-10 mx-16 py-10 border-b border-b-gray-300'>
            <h1 className='text-3xl font-thin '>Recipes</h1>
        </div>
        <div className='flex gap-10 items-center justify-center p-10'>
            {recipes.map(item => (
                <Link to={`/Recipes/${item.id}`}
                ><RecipePageCard key={item.id} id={item.id} title={item.name} image={item.imageLink} steps={item.steps} isPremium={item.isPremium}/></Link>
            ))}
        </div>

    </div>
  )
}

export default RecipeSection