import axios from 'axios'
import { useAtom } from 'jotai'
import React from 'react'
import { useState } from 'react'
import { useNavigate, useParams } from 'react-router'
import { SelectedIngredients, SelectedRecipe } from '../State'

const RecipePage = () => {
    const Param = useParams()
    const [recipe ,setRecipe] = useState([])
    const navigate = useNavigate()
    const [selectedIngredients] = useAtom(SelectedIngredients)
    const [steps, setSteps] = useState([])
    const [ingredients , setIngredients] = useState([])
    React.useEffect(()=>{
      axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {}).catch(
        reason => {
          console.log(reason)
          reason.response.status == 401 && navigate('/Login')}
      )
    },[])
    React.useEffect(()=>{
         axios.get(`https://localhost:7291/api/Recipes/${Param.id}`, {withCredentials: true}).then(res => {
          console.log(res.data)
          setRecipe(res.data)
          setSteps(res.data.steps.split('\\\\'))
        })},[])
    
    
  return (
    <div>
      <img src={recipe.imageLink} alt="" />
        <p>{recipe.name}</p>
        {steps.map(item=>(
          <p key={item[0]}>{item}</p>
        ))}
        
    </div>
  )
}

export default RecipePage