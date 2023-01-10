import React from 'react'
import FoodImage from '../Images/Foodies - Chef Top Menu.png'
import { useCookies} from 'react-cookie'

const DashboardHeader = () => {
  const [cookies, setCookie] = useCookies();
  return (
    <div className='cursor-default flex justify-between flex-row p-10 sm:p-12 md:p-16 lg:p-20 text-white bg-gradient-to-br from-orange-500 to-orange-900 items-center'>
        <div>
        <h1 className='text-5xl font-medium drop-shadow-lg'>Hi, {cookies.token}</h1>
        <br />
        <h5 className='text-xl font-thin drop-shadow-lg'>Begin your journey</h5>
        </div>
        <div>
            <img src={FoodImage} alt="" width={600}/>
        </div>
    </div>
  )
}

export default DashboardHeader