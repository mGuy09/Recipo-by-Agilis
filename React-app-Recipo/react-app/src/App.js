import './App.css';

async function App() {
  var ingredients = await fetch("http://localhost:5291/api/Ingredients").then(res => res.json()).then(result => result.toArray());
  
  return (
    <div className="App">
        <p>{ingredients.map(ing => ing)}</p>
    </div>
  );
}



export default App;
