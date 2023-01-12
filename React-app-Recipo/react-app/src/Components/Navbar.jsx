import React, { useState, useEffect, useRef } from 'react'
import { TfiClose, TfiMenu } from 'react-icons/tfi'
import { FaUserAlt } from 'react-icons/fa'
import { IoMdStar } from 'react-icons/io'
import { Link } from 'react-router-dom'
import { useCookies } from 'react-cookie'

function Navbar() {
  const [cookies] = useCookies()

  const [nav, setNav] = useState(false)
  const [dropdown, setDropdown] = useState(false)

  const ref = useRef()

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (!ref?.current?.includes(event.target)) {
        DropdownClose();
      }
    };
    document.addEventListener("mouseup", handleClickOutside);
  }, [ref]);

  const OpenClose = () => {
    setNav(!nav)
  }
  const Close = () => {
    setNav(false)
  }
  const DropdownOpenClose = () => {
    setDropdown(!dropdown)
  }
  const DropdownClose = () => {
    setDropdown(false)
  }

  return (
    <>
      <div className={!nav ? 'bg-translate' : 'w-full h-full ease-in-out duration-1000 bg-black bg-opacity-70 fixed z-20 backdrop-blur-sm'} onClick={Close}></div>
      <div className='flex justify-between'>
        <div className='flex m-3 mt-3 items-center'>
          <div>
            <TfiMenu size={30} className='m-1 cursor-pointer' onClick={OpenClose} />
          </div>
          <h1 className='cursor-default ml-3 font-semibold text-2xl'>RECIPO</h1>
        </div>
        <div className='m-3'>
          <FaUserAlt size={25} className='hidden lg:flex mx-5 mt-2 cursor-pointer items-center' onClick={DropdownOpenClose} />
          <div className={!dropdown ? 'absolute hidden bg-white z-10 right-2 top-[62px]' : 'absolute flex bg-white z-10 right-2 top-[62px] duration-300'} onClick={DropdownClose}>
            <ul className='flex flex-col duration-200'>
              <li className='border-b border-b-gray-200 py-2 px-3 hover:bg-orange-500 cursor-pointer'>User Page</li>
              <li className='border-b border-b-gray-200 py-2 px-3 hover:bg-orange-500 cursor-pointer'>Options</li>
              <Link to={'/Login'}><li className='py-2 px-3 hover:bg-orange-500 cursor-pointer'>Login</li></Link>
            </ul>
          </div>
        </div>
      </div>

      <div className={!nav ? ' fixed left-0 top-0 bg-white w-full lg:w-[500px] border-r h-full border-r-gray-200 text-xl font-semibold translate-x-[-100%] duration-500 z-10' :
        'fixed left-0 top-0 bg-white w-full h-full lg:w-[500px] border-r border-r-gray-200 text-xl font-semibold duration-500 ease-in-out z-30'}>
        <div>
          <div className='flex justify-between py-7 items-center'>
            <h1 className='px-4 cursor-default text-3xl font-bold'>RECIPO</h1>
            <TfiClose size={20} className='mx-4 cursor-pointer' onClick={OpenClose} />
          </div>
          <ul className='border-t border-t-gray-200'>
            <Link to='/' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700'>Home</li></Link>
            <Link to='/Dashboard' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700'>Dashboard</li></Link>
            <Link to='/Subscriptions' onClick={Close}><li className='p-4 text-emerald-500 drop-shadow-md active:duration-75 hover:bg-emerald-500 hover:text-white active:bg-emerald-700 flex'><IoMdStar className='mr-1 mt-1' /> Subscriptions</li></Link>
            <Link to='/Contact' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700'>Contact</li></Link>
            <Link to='/About' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700'>About</li></Link>
            <Link to='/Login' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700 lg:hidden'>Sign In</li></Link>
              <Link to='' onClick={Close}><li className='p-4 hover:bg-orange-500 drop-shadow-md active:duration-75 hover:text-white active:bg-orange-700 lg:hidden'>Logout</li></Link>
          </ul>
        </div>
      </div>

    </>
  )
}

export default Navbar