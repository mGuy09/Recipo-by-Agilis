import React, { useEffect, useState } from 'react'
import IngredientLabel from './IngredientLabel'
import axios from 'axios'


const  IngredientsSection = ({filter, search}) => {
  const [baseList, setBaseList] = useState([])
  const [selectedIngredients, setSelected] = useState([])

  const categoryId = filter
  const name = search
  useEffect(()=>{
    
      axios.get('https://localhost:7291/api/Ingredients').then(res => {
        console.log(res.data)
        setBaseList(res.data)
        
      })
    
  }, [])
  console.log(categoryId)
  console.log(search)

  const HandleClick = (e) =>{
    
      setSelected(prev =>{
        if(!e.target.checked)
        return [...prev, e.target.id]
      })
  }
  console.log(selectedIngredients)


  return (
    <div className='flex flex-wrap gap-6 p-10'>
      {name == undefined ? categoryId != 0 ? baseList.filter((item)=> item.CategoryId == categoryId).map(item=>(
        <IngredientLabel ClickHandler={HandleClick} text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
        )
        ): 
        baseList.map(item => (
          <IngredientLabel ClickHandler={HandleClick} text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
        )) :
        categoryId != 0? baseList.filter((item)=> item.CategoryId == categoryId & item.Name.toLowerCase().includes(name)).map(item=>(
          <IngredientLabel ClickHandler={HandleClick} text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
          )
          ): 
          baseList.filter((item) => item.Name.toLowerCase().includes(name)).map(item => (
            <IngredientLabel ClickHandler={HandleClick} text={item.Name} categoryId={item.CategoryId} Id={item.Id}/>
          ))}
        
        
    </div>
  )
}

export default IngredientsSection