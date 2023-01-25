import React from 'react'

const RecipePageCard = ({title, image, steps, isPremium}) => {
    const RecipeSteps = steps.split('\\\\')
    console.log(RecipeSteps)
  return (
    <div className='flex flex-col border-2 rounded-xl relative w-[400px] h-[500px] p-3 hover:scale-[1.07] active:scale-[1.02] duration-300'>
        <div className='bg-gradient-to-b rounded-xl from-transparent via-transparent to-white/90 absolute z-10 w-[90%] h-[97%]'></div>
        <div className='flex justify-center'>
        <img src={image} alt="" className='w-[350px] h-[250px] rounded-xl'/>
        </div>
        <div className='p-5'>
            <h1 className='text-2xl font-thin'>{title}</h1>
        </div>
        <div className='p-5 flex flex-col gap-2 overflow-hidden'>
            {RecipeSteps.map(item => 
                (
                <div className='mb-3'>
                    <h1 className='font-medium text-lg mb-2'>Step {item.substring(0,1)}</h1>
                    <p className='font-medium'>{item.substring(2)}</p>
                </div>
            ))}
        </div>

    </div>
  )
}

export default RecipePageCard