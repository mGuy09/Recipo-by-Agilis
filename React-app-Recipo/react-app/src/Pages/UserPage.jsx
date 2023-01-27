import axios from 'axios'
import React from 'react'
import { useNavigate } from 'react-router'
import FavoriteRecipe from '../Components/FavoriteRecipe'
import PremiumAd from '../Components/PremiumAd'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'
import RecipeCard from '../Components/RecipeCard'

const UserPage = () => {
    const [username, setUsername] = React.useState()
    const [userRole, setUserRole] = React.useState([])
    const [isPremium, setPremium] = React.useState()
    const [favorites, setFavorites] = React.useState([])
    const [email, setEmail] = React.useState()
    const navigate = useNavigate()

    React.useEffect(()=>{
        axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
        setUsername(res.data.username)
        setUserRole(res.data.roles)
        setEmail(res.data.emailAddress)
        setPremium(res.data.roles.includes('SubscribedUser'))
    }).catch(reason => reason.response.status === 401 && navigate('/Login'))
        axios.get('https://localhost:7291/Favorites',{withCredentials: true}).then(res => setFavorites(res.data.data))
    },[])
    
 
  return (
    <div className='flex flex-col'>
        {isPremium ? <PremiumAddRecipes/> : <PremiumAd/>}
        <div className='p-10 font-thin text-3xl border-b-2 border-b-gray-300 mx-4'>
            <h1 className='mx-10'>User Details</h1>
        </div>
        <div className='flex flex-col items-center gap-0'>
            <div className='flex flex-col px-5 py-10 w-[70%] shadow-lg border justify-start rounded-xl border-gray-300 m-10 gap-5'>
                <p className='text-lg font-medium'>Subscription: <span className={userRole.includes('SubscribedUser')?'font-normal text-emerald-600':'font-normal'}>{userRole.includes('SubscribedUser') ? "Premium Plan" : 'Standard Plan'}</span></p>
                <p className='text-lg font-medium'>Username: <span className='font-normal'>{username}</span></p>
                <p className='text-lg font-medium'>Email address: <span className='font-normal'>{email}</span></p>
                
                {favorites.length > 0 ? <>
                    <div className='flex flex-col'>
                    <h1 className='text-xl'>Favorite Recipes</h1>
                </div>
                    <div className='grid grid-cols-1 lg:grid-cols-2 2xl:grid-cols-3 gap-10 mt-10 justify-evenly items-center '>
                        {favorites.map(item => (
                            <FavoriteRecipe title={item.name} image={item.imageLink} steps={item.steps} isPremium={item.isPremium} Id={item.id}/>
                        ))}
                    </div>
                </> : null}
                {isPremium ? <>
                <div className='flex flex-col'>
                    <h1 className='text-xl'>Your Recipes</h1>
                </div>
                <div className='grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-10 mt-10 justify-evenly items-center '>
                    <RecipeCard />
                    <RecipeCard />
                    <RecipeCard />
                </div>
                </> : null}
                
            
        </div>
        </div>
        
    </div>
  )
}

export default UserPage