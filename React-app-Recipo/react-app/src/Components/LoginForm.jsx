import React from 'react'
import LoginAltButtons from './LoginAltButtons'


const LoginForm = () => {
  return (
    <div>
        
        <form action="" className='flex flex-col items-center'>
        <h1 className='text-2xl font-medium m-2 mt-10 mb-10'>Sign In</h1>
        <LoginAltButtons />
            <div className='flex flex-col gap-2 my-2'>
                <input type="text" name='email' placeholder='Email' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2 '/>
                <input type="password" name='password' placeholder='Password' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2 '/>
            </div>
            <button className='bg-orange-500  mx-2 text-white hover:bg-orange-400 active:bg-orange-600 rounded-full px-6 py-2 duration-300'>Login</button>
        </form>
    
    </div>
  )
}

export default LoginForm