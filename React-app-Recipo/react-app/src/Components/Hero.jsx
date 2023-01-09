import Typed from 'react-typed'
import {Parallax} from 'react-parallax'
import React from 'react'
import Food from '../Images/jed-owen-q6Y8Xr3SoQA-unsplash (1).jpg'

const Hero = () => {
  return (
    <div>
        <Parallax className='cursor-default relative flex m-0 justify-center items-center h-[35vh] sm:h-[45vh] md:h-[55vh] lg:h-[75vh] xl:h-[90vh] 2xl:h-screen bg-black' bgImage={Food} strength={300}>
            <span className='text-white font-medium drop-shadow-2xl text-3xl sm:text-6xl md:text-7xl lg:text-8xl z-10'>
                    Personalized <span className='text-orange-400'>Recipes</span>
                    <br/>Only for you.
                    <br />
                    <Typed className='text-orange-400 drop-shadow-2xl' 
                    strings={[
                        'Recipo',
                        'Select Ingredients',
                        'Get the Recipes'
                    ]}
                    typeSpeed={90}
                    backSpeed={50}
                    backDelay={3000}
                    loop/>
                </span>
            </Parallax>
            
    </div>
  )
}

export default Hero