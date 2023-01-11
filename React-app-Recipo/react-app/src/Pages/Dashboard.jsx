import React from 'react'
import DashboardCategories from '../Components/DashboardCategories'
import DashboardHeader from '../Components/DashboardHeader'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'

const Dashboard = () => {
  
  return (
    <>
        <DashboardHeader />
        <PremiumAddRecipes />
        <DashboardCategories />
    </>
  )
}

export default Dashboard