import React from 'react'
import { Parallax } from 'react-parallax'
import BackgroundImage from '../Images/Strawberries.jpg'

const About = () => {
    return (
        <div className=''>
            <Parallax bgImage={BackgroundImage} className='w-full h-screen flex items-center relative bg-black' renderLayer={(percentage) => (
                <div
                    style={{
                        position: 'absolute',
                        width: '100%',
                        height: '100%',
                        background: `rgba(0, 0, 0, ${percentage * 0.5})`,
                    }}
                />
            )} strength={0} blur={5}>
                <div className='bg-orange-100 drop-shadow-lg p-20 rounded-xl m-60'>
                    <h1 className='text-3xl font-semibold'>About Us</h1>
                    <br />
                    <p className='text-xl '>We, at Agilis, started working together as a team a year ago, and ever since we tried to create unique apps which will make our customer's life easier.</p>
                    <br />
                    <br />
                    <h1 className='text-3xl font-semibold'>About Recipo</h1>
                    <br />
                    <p className='text-xl'>Ever felt like you ran out of ideas when it comes to cooking the next meal?
                        Well, it happened to us a lot and that's how we came up with RECIPO.
                        This app is intended to be a Cooking book just one click away, but based on what ingredients you have available.</p>


                </div>
            </Parallax>
        </div>
    )
}

export default About