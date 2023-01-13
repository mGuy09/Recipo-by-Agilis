import React from 'react'
import { FaSearch } from 'react-icons/fa'
import CategoryCard from './CategoryCard'
import Dairy from '../Images/alexander-maasch-KaK2jp8ie8s-unsplash.jpg'
import Meats from '../Images/cindie-hansen-cvj-7TZjvA0-unsplash.jpg'
import Vegetables from '../Images/sharon-pittaway-KUZnfk-2DSQ-unsplash.jpg'
import Herbs from '../Images/andra-ion-qsPHXC4T2cY-unsplash.jpg'
import Grains from '../Images/mohamed-hassouna-N4gtuEZ5gWc-unsplash.jpg'
import Condiments from '../Images/pedro-durigan-LBPpGIKzXok-unsplash.jpg'

const DashboardCategories = () => {
  return (
    <>
    <div className='bg-white flex justify-between items-center border-b-gray-400 border-b mx-10'>
        <h1 className='cursor-default text-3xl font-semibold p-5 mx-5 justify-start flex'>Ingredients</h1>
        <div className='border-gray-400 border-2 mx-5 px-3 py-2 my-6 flex items-center rounded-full'>
        <FaSearch size={15} className='text-gray-400 mr-1'/>
        <input className='px-2 w-[20rem] outline-none' placeholder='Search' type="search" />
        </div>
    </div>
    <div className='grid py-10 px-16 grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-x-48 lg:gap-x-32 mx-20'>
        <CategoryCard  text='Dairy' image={Dairy}/>
        <CategoryCard  text='Meats' image={Meats}/>
        <CategoryCard  text='Vegetables' image={Vegetables}/>
        <CategoryCard text='Herbs & Spices' image={Herbs}/>
        <CategoryCard  text='Condiments' image={Condiments}/>
        <CategoryCard  text='Grains' image={Grains} />
    </div>
    </>
  )
}

export default DashboardCategories