import { type } from '@testing-library/user-event/dist/type'
import React, { useEffect, useState } from 'react'
import { IoIosArrowDown, IoIosArrowUp } from 'react-icons/io'

const IngredientsFilter = () => {
    const [filterDropdown, setDropdown] = useState(false)
    const Inputs = document.querySelectorAll('input')
    const[isLarge, setIsLarge] = useState(window.innerWidth >= 1024 ? true : false)
    const OpenClose = () => {
        setDropdown(!filterDropdown)
    }
    useEffect(()=>{
        function handleResize(){
            if(window.innerWidth >= 1024) setIsLarge(true)
            else setIsLarge(false)
        }
        window.addEventListener('resize', handleResize)
    })
    Inputs.forEach((item)=>{
        if(item.id.contains('filter')){
            console.log(item)
        }
    })
  return (
    <div className='duration-300 ease-in-out'>
    <div className='p-6 mx-10 flex px-8 justify-between items-center border-b border-b-gray-400 z-10'>
        <div>
            <h1 className='text-lg md:text-xl lg:text-2xl font-thin cursor-default '>Ingredient Filter</h1>
        </div>
        <div>
            <IoIosArrowDown size={42} className={!filterDropdown ? 'rounded-full p-2 active:bg-gray-300 hover:bg-gray-100 lg:hidden': 'hidden'} onClick={OpenClose}/>
            <IoIosArrowUp size={42} className={filterDropdown ? 'rounded-full p-2 active:bg-gray-300 hover:bg-gray-100 lg:hidden': 'hidden'} onClick={OpenClose}/>
        </div>
    </div>
    {<div className={filterDropdown || isLarge ? 'flex gap-10 justify-center duration-300 flex-wrap py-7 mx-10 border-b border-b-gray-400 z-0' : 'hidden'}>
            
            <div>
                <input type="radio" id='allingredientsfilter' name='ingredientsfilter' value={0} className='hidden peer'/>
                <label htmlFor="allingredientsfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>All Ingredients</label>
            </div>
            <div>
                <input type="radio" id='dairyfilter' name='ingredientsfilter' value={3} className='hidden peer'/>
                <label htmlFor="dairyfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Dairy</label>        
            </div>
            <div>
                <input type="radio" id='meatsfilter' name='ingredientsfilter' value={2} className='hidden peer'/>
                <label htmlFor="meatsfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Meats</label>        
            </div>
            <div>
                <input type="radio" id='veggiefilter' name='ingredientsfilter' value={1} className='hidden peer'/>
                <label htmlFor="veggiefilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Vegetables</label>        
            </div>
            <div>
                <input type="radio" id='herbsfilter' name='ingredientsfilter' value={5} className='hidden peer'/>
                <label htmlFor="herbsfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Herbs & Spices</label>        
            </div>
            <div>
                <input type="radio" id='condimentsfilter' name='ingredientsfilter' value={4} className='hidden peer'/>
                <label htmlFor="condimentsfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Condiments</label>        
            </div>
            <div>
                <input type="radio" id='grainsfilter' name='ingredientsfilter' value={6} className='hidden peer'/>
                <label htmlFor="grainsfilter" className='py-3 px-5 duration-150 bg-white border rounded-full border-gray-400 text-gray-400 peer-checked:bg-orange-500 peer-checked:border-orange-500 peer-checked:hover:bg-orange-400 peer-checked:hover:border-orange-400 peer-checked:text-white hover:border-orange-500 hover:text-orange-500 active:bg-orange-700 active:text-white peer-checked:active:bg-orange-700 cursor-pointer select-none'>Grains</label>        
            </div>
        </div>}
    
    </div>
  )
}

export default IngredientsFilter