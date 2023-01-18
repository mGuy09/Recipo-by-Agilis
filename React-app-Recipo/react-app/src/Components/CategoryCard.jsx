import React from 'react'


const CategoryCard = ({text}) => {

  return (

    <div className='flex justify-center items-center my-10 rounded-xl text-white px-24 py-16 md:px-32 md:py-20 lg:px-40 lg:py-28 bg-orange-500 duration-300 ease-in-out cursor-pointer shadow-sm hover:scale-110 hover:bg-orange-300 hover:shadow-xl active:bg-orange-800 active:scale-105 active:shadow-lg'>
      <h1 className='absolute text-xl lg:text-3xl font-medium cursor-pointer'>{text}</h1>
    </div>
  )
}

export default CategoryCard