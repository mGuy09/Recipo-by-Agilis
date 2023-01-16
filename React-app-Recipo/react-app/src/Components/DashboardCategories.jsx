import React, { useEffect, useState } from 'react'
import { FaSearch } from 'react-icons/fa'
import CategoryCard from './CategoryCard'
import {Link} from 'react-router-dom'
import axios from 'axios'
import PulseDashboardCategories from './PulseDashboardCategories'

const DashboardCategories = () => {
  const [categoryList, setCategoryList] = useState([])

  useEffect(()=>{
    setTimeout(()=>{
      axios.get('https://localhost:7291/api/Categories', {withCredentials: true}).then(res => {
        console.log(res.data) 
        setCategoryList(res.data)})
    },2753)
  }, [])
  return (
    <>
    <div className='bg-white flex justify-between items-center border-b-gray-400 border-b mx-10'>
        <h1 className='cursor-default  text-xl lg:text-3xl font-semibold p-5 mx-5 justify-start flex'>Ingredients</h1>
        <div className='hidden border-gray-400 border-2 mx-5 px-3 py-2 my-6 lg:flex items-center rounded-full'>
        <FaSearch size={15} className='text-gray-400 mr-1'/>
        <input className='px-2 w-[20rem] outline-none' placeholder='Search' type="search" />
        </div>
    </div>
    <div className='grid py-10 px-16 grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-x-10 md:gap-x-20 lg:gap-x-32 mx-5 lg:mx-20'>
      {categoryList.length === 0 ? 
      
      <PulseDashboardCategories/>
      
      :
      categoryList.map((item) => (
        <Link to={'/Ingredients/'+item.id}><CategoryCard key={item.id} text={item.name} id={item.id}/></Link>
      ))
      }
    </div>
    </>
  )
}

export default DashboardCategories