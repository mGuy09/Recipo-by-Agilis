import React from 'react'
import { Parallax } from 'react-parallax'
import BackgroundImage from '../Images/pasta.jpg'

const Contact = () => {
    
    return (
        <div className='' >
            <Parallax bgImage={BackgroundImage} className='w-full h-screen flex items-center relative bg-slate-300' renderLayer={(percentage) => (
                <div
                    style={{
                        position: 'absolute',
                        width: '100%',
                        height: '100%',
                        background: `rgba(0, 0, 0, ${percentage * 0.5})`,
                    }}
                />
            )} strength={0} blur={5}>
                <div className='bg-slate-400 drop-shadow-lg p-20 rounded-xl m-60'>
                    <h1 className='text-5xl font-semibold'>Want to get in touch?</h1>
                </div>
            </Parallax>
        </div>
    )
}

export default Contact