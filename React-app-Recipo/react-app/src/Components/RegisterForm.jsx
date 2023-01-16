import axios from 'axios';
import React from 'react'
import { useState } from 'react';
import { FaExclamationCircle } from 'react-icons/fa';
import { useNavigate } from 'react-router';


function RegisterForm(props) {
    const [user, SetUser] = useState({})
    const [isValid, setValid] = useState(true)
    const navigate = useNavigate()
    const apiUrl = 'https://localhost:7291/api/Users/Register';

    const AddUser = async(e) => {
        e.preventDefault();
        const data = { userName: user.username, email: user.email, password: user.password, confirmPassword: user.confirmpassword };
        console.log(data);
        await axios.post(apiUrl, data).then(result => {
        });
        navigate('/Login')
        
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
                <h1 className='text-2xl font-medium m-2 mt-10 mb-10'>Join us</h1>
                <p className={isValid?'hidden':'flex items-center gap-2 mb-10 text-red-500 font-semibold'}> <FaExclamationCircle />Required fields</p>
                <div className='flex flex-col gap-5 items-center'>
                    <div className='flex gap-2 items-center'>
                    <FaExclamationCircle className={!isValid?'text-red-500': 'hidden'}/><input required type="text" name='username' autoComplete='none' placeholder='Username' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    </div>
                    <div className='flex gap-2 items-center'>
                    <FaExclamationCircle className={!isValid?'text-red-500': 'hidden'}/><input  type="email" name='email' autoComplete='none' placeholder='Email' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    </div>
                    <div className='flex gap-2 items-center'>
                    <FaExclamationCircle className={!isValid?'text-red-500': 'hidden'}/><input required type="password" name='password' placeholder='Password' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    </div>
                    <div className='flex gap-2 items-center'>
                    <FaExclamationCircle className={!isValid?'text-red-500': 'hidden'}/><input required type="password" name='confirmpassword' placeholder='Confirm Password' className='border border-gray-400 rounded-full px-3 py-1 outline-none m-2' onChange={onChange} />
                    </div>

                </div>
                <button type='submit' className='bg-orange-500 mx-2 text-white hover:bg-orange-400 active:bg-orange-700 rounded-full px-6 py-2 duration-300 my-5 '>Sign Up</button>
            </form>
        </div>
    )
}

export default RegisterForm