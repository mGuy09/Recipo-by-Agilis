import React, { useEffect, useState } from 'react'
import IngredientLabel from './IngredientLabel'
import axios from 'axios'

const  IngredientsSection = ({filter, search}) => {
  const [baseList, setBaseList] = useState([])
  const [selectedIngredients, setSelected] = useState([])
  const [Checkmark, setCheckmark] = useState([])
  
  const categoryId = filter
  const name = search
  useEffect(()=>{
      axios.get('https://localhost:7291/api/Ingredients', {
        withCredentials: true,
        headers: {'Access-Control-Allow-Origin': '*', 'Content-Type': 'application/json'
    }}).then(res => {
        setBaseList(res.data)
      })
  }, [])

  
  useEffect(()=>{
    setCheckmark(document.querySelectorAll('.checkmark'))
  }, [filter,search])

   useEffect(()=>{
    
    Checkmark.forEach(element => {
      if(selectedIngredients.includes(element.id)){
        element.checked = true
      }
    })
  },[Checkmark, selectedIngredients])

  const HandleClick = (e) =>{
    if(e.target.checked){
      setSelected(prev =>{
        return [...prev, e.target.id]
      })
    }
    else
    {
      setSelected(selectedIngredients.filter((item) => item !== e.target.id))
    }
  }
  const OnSubmit = () => {
    console.log(selectedIngredients)
  }

  return (
    <div className='flex flex-col'>
      <div className='flex flex-wrap gap-6 p-10 justify-center'>
        {baseList.length === 0 && <p className='flex justify-center text-2xl'>Loading...</p>}
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
      <div className='p-10 flex justify-center items-center'>
        {selectedIngredients.length >= 1 ? <button onClick={OnSubmit} className='bg-orange-500 px-8 py-2 rounded-full text-lg text-white'>Get Recipes</button>: <h1 className='font-thin text-xl '>Please select 1 or more ingredients</h1>}
        
      </div>
    </div>
  )
}

export default IngredientsSection