import React from 'react'
import SubscriptionCard from './SubscriptionCard'

const SubscriptionCardsSection = () => {
  return (
    <div className='flex flex-col justify-center items-center pb-20 p-8 px-52'>
        <h1 className='text-4xl font-thin py-20'>Choose Your Plan</h1>
        <div className='flex flex-col gap-6 lg:flex-row lg:gap-10 xl:gap-26'>
            <SubscriptionCard title='Standard Plan' description='Limited to only free recipes provided by Recipo and other users' price='free'/>
            <SubscriptionCard title='Monthly Premium Plan' description='Have access to all free and premium recipes.  Premium users have the ability to add new recipes.  Payment recurring monthly for Premium Account' price='€7.99' isMiddle={true}/>
            <SubscriptionCard title='Yearly Premium Plan' description='Have access to all free and premium recipes.  Premium users have the ability to add new recipes.  Payment recurring yearly for Premium Account' price='€79.99'/>
        </div>
        
    </div>
  )
}

export default SubscriptionCardsSection