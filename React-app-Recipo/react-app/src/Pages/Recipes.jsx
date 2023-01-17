import axios from 'axios'
import React from 'react'
import { useNavigate } from 'react-router'

const Recipes = () => {
  
  const navigate = useNavigate()
  React.useEffect(()=>{
    axios.get('https://localhost:7291/api/Users/GetUser', {withCredentials: true}).then(res => {
    }).catch((reason)=>{
      reason.response.status != 200 && navigate('/Login')
    })
  },[])
  
  return (
    <div>Recipes</div>
  )
}

export default Recipes