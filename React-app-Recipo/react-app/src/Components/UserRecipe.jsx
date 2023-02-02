import React from 'react'
import { BsPencilSquare } from 'react-icons/bs'
import { FaTrashAlt } from 'react-icons/fa'
import { useNavigate } from 'react-router-dom'

const UserRecipe = ({title, image, steps, Id}) => {
    
    const navigate = useNavigate()
    const RecipeSteps = steps.split('\\\\')
    
    const ToRecipe = ()=>{
        navigate(`/Recipes/${Id}`)
    }
  return (
    <div className="flex flex-col border-2 group rounded-xl select-none relative w-[400px] h-[500px] hover:scale-[1.07] active:scale-[1.02] p-3 duration-300">
      <div
        onClick={ToRecipe}
        className="bg-gradient-to-b rounded-xl from-transparent via-transparent to-white/90 absolute w-[90%] h-[97%]"
      ></div>
      <div className="flex justify-center">
        <div className="flex justify-between w-[85%] z-10 absolute">
          <FaTrashAlt
            className="m-2 invisible group-hover:visible hover:scale-[1.20] active:scale-110 active:text-red-700 hover:text-red-400 drop-shadow text-white group-hover:duration-200"
            size={23}
          />
          <BsPencilSquare
            className="m-2 invisible group-hover:visible hover:scale-[1.20] active:scale-110 active:text-amber-600 drop-shadow hover:text-amber-400 text-white group-hover:duration-200"
            size={23}
          />
        </div>
        <img src={image} alt="" className="w-[350px] h-[250px] rounded-xl" />
      </div>
      <div className="p-5">
        <h1 className="text-2xl font-thin">{title}</h1>
      </div>
      <div className="p-5 flex flex-col gap-2 overflow-hidden">
        {RecipeSteps.map((item) => (
          <div className="mb-3">
            <h1 className="font-medium text-lg mb-2">
              Step {item.substring(0, 1)}
            </h1>
            <p className="font-medium">{item.substring(2)}</p>
          </div>
        ))}
      </div>
    </div>
  );
}

export default UserRecipe