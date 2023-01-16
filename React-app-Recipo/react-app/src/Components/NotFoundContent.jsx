import React from 'react'
import { Link } from 'react-router-dom/dist'

const NotFoundContent = () => {
  return (
    <div className='flex flex-col px-10 md:px-32 lg:px-52 text-sm lg:text-lg mb-[374px]'>
        <p>The user tried to access a page that does not exist or it is unauthorized to access it.</p>
        <p>Link to go back to the main page. <Link to='/' className='text-orange-500 underline underline-offset-[3px]'>Home</Link></p>
        
    </div>
  )
}

export default NotFoundContent