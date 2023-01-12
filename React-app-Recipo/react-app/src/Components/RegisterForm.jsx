import axios from 'axios';
import React from 'react'
import { useState } from 'react';
import { useNavigate } from 'react-router';


function RegisterForm(props) {
    const [user, SetUser] = useState({})
    const navigate = useNavigate()
    const apiUrl = 'https://localhost:7291/api/Users/Register';

    const AddUser = async(e) => {
        e.preventDefault();
        const data = { userName: user.username, email: user.email, password: user.password, confirmPassword: user.confirmpassword };
        console.log(data);
        await axios.post(apiUrl, data).then(result => {
            console.log(result);
            navigate('/Login')
        });
        
    }
    const onChange = (e) => {
        const value = e.target.value;
        SetUser({
            ...user, [e.target.name]: value
        })
    }
    return (
        <div>
            <form className='flex flex-col items-center' onSubmit={AddUser}>
                <h1 className='text-2xl font-medium m-2 mt-10 mb-16'>Join us</h1>
                <div className='flex flex-col items-center'>
                    <input required type="text" name='username' placeholder='Username' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    <input required type="email" name='email' placeholder='Email' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    <input required type="password" name='password' placeholder='Password' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    <input required type="password" name='confirmpassword' placeholder='Confirm Password' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />

                </div>
                <button type='submit' className='bg-orange-500 mx-2 text-white hover:bg-orange-400 active:bg-orange-700 rounded-full px-6 py-2 duration-300 my-5 '>Sign Up</button>
            </form>
        </div>
    )
}

export default RegisterForm