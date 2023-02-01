import React, { useState } from "react";
import RecipeForm from "../Components/RecipeForm";
import { useEffect } from "react";
import AddRecipeProgressBar from "../Components/AddRecipeProgressBar";
import AddRecipeTitle from "../Components/AddRecipeTitle";
import AddRecipeIngredients from "../Components/AddRecipeIngredients";
import AddRecipeSteps from "../Components/AddRecipeSteps";

const AddRecipe = () => {
  const [pageNumber, setPageNumber] = useState(0);
  const IncreasePageNumber = () => {
    pageNumber < 5 && setPageNumber(pageNumber + 1);
    console.log(pageNumber);
  };

  return (
    <div className="justify-center flex bg-gray-300 ">
      <div className="w-[90%] h-[70vh] mx-80 my-20 rounded-2xl border-gray-300 bg-white flex flex-col items-center gap-16 justify-end">
        {/* <RecipeForm /> */}
        <div className="flex justify-center items-center">
          {pageNumber === 0 && <AddRecipeTitle />}
          {pageNumber === 1 && <AddRecipeIngredients />}
          {pageNumber === 2 && <AddRecipeSteps />}
        </div>
        <div className="flex flex-col items-center">
          <AddRecipeProgressBar pageNumber={pageNumber} />
          <div className="flex flex-row-reverse gap-5">
            <button
              onClick={IncreasePageNumber}
              className="bg-orange-500 my-10 text-white font-medium hover:bg-orange-400 active:bg-orange-700 duration-200 px-5 py-2 rounded-full"
            >
              Next
            </button>
            <button
              onClick={()=>{setPageNumber(0)}}
              className="bg-orange-500 my-10 text-white font-medium hover:bg-orange-400 active:bg-orange-700 duration-200 px-5 py-2 rounded-full"
            >
              Reset
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AddRecipe;
