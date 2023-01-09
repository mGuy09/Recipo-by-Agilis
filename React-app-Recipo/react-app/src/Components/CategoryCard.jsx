import React, { useState } from 'react'
import { Link } from 'react-router-dom'


const CategoryCard = ({text, image, id}) => {

  return (

    <div className='flex justify-center items-center my-10 rounded-xl text-white  border-solid border-2 w-[24rem] h-[16.5rem] duration-300 ease-in-out cursor-pointer hover:scale-110'>
      <Link to="/Ingredients" ><img src={image} alt="" className={'rounded-lg brightness-50 contrast-125 h-[16rem] duration-300 ease-linear'}/></Link>
      <h1 className='absolute text-3xl font-medium drop-shadow-lg cursor-pointer'>{text}</h1>
    </div>
  )
}

export default CategoryCard