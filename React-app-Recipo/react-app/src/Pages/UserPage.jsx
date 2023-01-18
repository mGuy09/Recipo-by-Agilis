import axios from 'axios'
import React from 'react'
import { Link } from 'react-router-dom'
import PremiumAd from '../Components/PremiumAd'
import RecipeCard from '../Components/RecipeCard'

const UserPage = () => {
    const [username, setUsername] = React.useState()
    const [userRole, setUserRole] = React.useState([])
    const [email, setEmail] = React.useState()

    React.useEffect(()=>{
        axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
        setUsername(res.data.username)
        setUserRole(res.data.roles)
        setEmail(res.data.emailAddress)
    })
    })
    

  return (
    <div className='flex flex-col'>
        <PremiumAd/>
        <div className='p-10 font-thin text-3xl border-b-2 border-b-gray-300 mx-4'>
            <h1 className='mx-10'>User Details</h1>
        </div>
        <div className='flex flex-col items-center gap-0'>
            <div className='flex flex-col px-5 py-10 w-[70%] shadow-lg border justify-start rounded-t-xl border-gray-300 m-10 gap-5'>
                <p className='text-lg font-medium'>Subscription: <span className={userRole.includes('SubscribedUser')?'font-normal text-emerald-600':'font-normal'}>{userRole.includes('SubscribedUser') ? "Premium Plan" : 'Standard Plan'}</span></p>
                <p className='text-lg font-medium'>Username: <span className='font-normal'>{username}</span></p>
                <p className='text-lg font-medium'>Email address: <span className='font-normal'>{email}</span></p>
                <div className='flex flex-col'>
                    <h1 className='text-xl'>Your Recipes</h1>
                </div>
                    <div className='flex gap-10 mt-10 justify-evenly'>
                        <RecipeCard />
                        <RecipeCard />
                        <RecipeCard />
                    </div>
                
            
        </div>
        </div>
        
    </div>
  )
}

export default UserPage