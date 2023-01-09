import React from 'react'
import IngredientsFilter from '../Components/IngredientsFilter'
import IngredientsSearch from '../Components/IngredientsSearch'
import IngredientsSection from '../Components/IngredientsSection'
import PremiumAddRecipes from '../Components/PremiumAddRecipes'

const Ingredients = () => {
  return (
    <>
    <PremiumAddRecipes />
    <IngredientsFilter />
    <IngredientsSearch />
    <IngredientsSection />
    </>
  )
}

export default Ingredients