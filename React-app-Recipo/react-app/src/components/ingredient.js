
const ingredient = ({item}) => {
  return (
    <div>
        <h1>Ingredients</h1>
        {Object.entries(item).map(([key, value])=>{
            return (
             <div key={key}>
                <p>{value}</p>
             </div>
            )
        })}

    </div>
  )
}

export default ingredient