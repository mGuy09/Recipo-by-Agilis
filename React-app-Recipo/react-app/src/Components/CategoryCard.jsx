import React, { useState } from 'react'
import { Link } from 'react-router-dom'


const CategoryCard = ({text, image, id}) => {
  const [blurState, setBlur] = useState(false)
  const BlurImage = ()=> {
    setBlur(true)
  }
  const ResetImage = () => {
    setBlur(false)
  }
  return (
    // <div className='flex whitespace-nowrap justify-center py-20 text-white my-10 rounded-md bg-orange-500 hover:bg-orange-900 ease-in duration-100 text-2xl hover:text-3xl hover:py-[78px]'>
    //     <h1 className='font-medium drop-shadow-lg '>{text}</h1>
    // </div>
    <div className='flex justify-center items-center my-10 rounded-xl text-white bg-gray-700 p-1 border-gray-700 border-solid border-2 w-[24rem] h-[16.5rem] hover:border-orange-500 hover:bg-orange-500 duration-100 ease-in-out cursor-pointer' onMouseEnter={BlurImage} onMouseLeave={ResetImage}>
      <Link to="/Ingredients" ><img src={image} alt="" className={!blurState ? 'rounded-lg brightness-50 contrast-125 h-[16rem] duration-300 ease-linear' : 'rounded-md brightness-50 contrast-125 h-[16rem] blur-sm duration-300 ease-linear'}/></Link>
      <h1 className='absolute text-3xl font-medium drop-shadow-lg cursor-pointer'>{text}</h1>
    </div>
  )
}

export default CategoryCard