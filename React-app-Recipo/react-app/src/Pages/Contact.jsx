import { React, useRef } from 'react'
import { Parallax } from 'react-parallax'
import BackgroundImage from '../Images/pasta.jpg'
import emailjs from '@emailjs/browser';

const Contact = () => {
    const form = useRef();
    const sendEmail = (e) => {
        e.preventDefault();

        emailjs.sendForm('service_inj98kg', 'template_xmwctmf', form.current, 'DR4gQHLbVtzT2Z2B5')
            .then((result) => {
                console.log(result.text);
            }, (error) => {
                console.log(error.text);
            });
        e.target.reset();
    };
    return (
        <div className='grid-cols-2  items-center ' >
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
                <section className='flex flex-col place-items-center bg-slate-400 drop-shadow-lg p-20 rounded-xl m-60 '>
                    <div>
                        <h2 className='text-center space-x-3 '>Contact us</h2>
                        <form ref={form} onSubmit={sendEmail} className='space-x-3 '>
                            <input className='space-x-3 ' type="text" placeholder='Your name' name='user_name' required />
                            <input className='space-x-3 ' type="email" placeholder='Your email' name='email' required />
                            <input className='space-x-3 ' name="message" required cols="30" rows="10" placeholder='Your message' />
                            <button className='' type='submit'>Send message</button>
                        </form>
                    </div>
                </section>
            </Parallax>

        </div>
    )
}

export default Contact