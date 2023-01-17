import axios from 'axios'
import React from 'react'
import { useNavigate } from 'react-router'
import FoodImage from '../Images/Foodies - Chef Top Menu.png'


const DashboardHeader = () => {
  const [username, setUsername] = React.useState()
  const navigate = useNavigate()
  
  React.useEffect(()=>{
    axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
      setUsername(res.data.username)
    }).catch((reason)=>reason.response.status !== 200 && navigate('/Login'))
  },[])
  
  return (
    <div className='cursor-default flex justify-between flex-row p-10 sm:p-12 md:p-16 lg:p-20 text-white bg-gradient-to-br from-orange-500 to-orange-900 items-center'>
        <div>
        <h1 className='text-xl md:text-2xl lg:text-5xl font-medium drop-shadow-lg'>Hi, {username}</h1>
        <br />
        <h5 className='text-sm md:text-lg lg:text-xl font-thin drop-shadow-lg'>Begin your journey</h5>
        </div>
        <div>
            <img src={FoodImage} alt="" className='hidden md:flex lg:flex md:w-[400px] lg:w-[600px]'/>
        </div>
    </div>
  )
}

export default DashboardHeader