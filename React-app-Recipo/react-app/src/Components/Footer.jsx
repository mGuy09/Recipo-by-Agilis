import React from 'react'
import { FaFacebookSquare, FaInstagramSquare, FaTwitterSquare } from 'react-icons/fa'

function Footer() {
  return (
    <div className='bg-black text-gray-500 flex flex-col gap-6 md:flex-row justify-around px-10 pt-5 pb-32'>
        <div className='flex flex-row md:flex-col  gap-3 '>
            <FaFacebookSquare size={35} className='cursor-pointer hover:text-gray-300'/>
            <FaInstagramSquare size={35} className='cursor-pointer hover:text-gray-300'/>
            <FaTwitterSquare size={35} className='cursor-pointer hover:text-gray-300'/>
        </div>
        <div>
            <p className='text-gray-400 text-lg font-bold cursor-default'>Support</p>
            <p className='cursor-pointer hover:text-gray-300'>Help</p>
            <p className='cursor-pointer hover:text-gray-300'>Advisories</p>
            <p className='cursor-pointer hover:text-gray-300'>Contact</p>
        </div>
        <div>
            <p className='text-gray-400 text-lg font-bold cursor-default'>Company</p>
            <p className='cursor-pointer hover:text-gray-300'>About</p>
            <p className='cursor-pointer hover:text-gray-300'>Blog</p>
        </div>
        <div>
            <p className='text-gray-400 text-lg font-bold cursor-default'>Terms & Policies</p>
            <p className='cursor-pointer hover:text-gray-300'>Policies</p>
            <p className='cursor-pointer hover:text-gray-300'>Terms of Use</p>
            <p className='cursor-pointer hover:text-gray-300'>Privacy</p>
            <p className='cursor-pointer hover:text-gray-300'>Code of Conduct</p>
        </div>
    </div>
  )
}

export default Footer