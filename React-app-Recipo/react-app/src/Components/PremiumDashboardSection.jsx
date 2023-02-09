import React from 'react'
import { IoMdStar } from 'react-icons/io'
import { Link } from 'react-router-dom'
import { Trans } from 'react-i18next';

const PremiumDashboardSection = () => {
  return (
    <div className='bg-black p-10 flex justify-around items-center gap-32'>
      <h1 className='text-white text-xl font-thin flex gap-2 flex-wrap'><Trans i18nKey="description.premium6" /><span className='text-emerald-500 font-medium'><Trans i18nKey="description.premium7" /></span><Trans i18nKey="description.premium8" /> </h1>
      <Link className='bg-emerald-500 text-white hover:shadow-lg hover:shadow-emerald-400/60 py-4 px-6 rounded-full text-xs sm:text-base lg:text-lg font-medium flex items-center hover:scale-105 hover:bg-emerald-400 ease-linear duration-150 active:bg-emerald-700' to='/Add-Recipe' ><IoMdStar size={18} className='mr-2' /><Trans i18nKey="description.premium5" /> </Link>
    </div>
  )
}

export default PremiumDashboardSection