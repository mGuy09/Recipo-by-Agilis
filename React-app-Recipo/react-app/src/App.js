
import './App.css';
import { useEffect, useState } from 'react';
import ReactDOM from "react-dom";
import {
  BrowserRouter as Router,
  Switch,
  Route,
  useParams
} from "react-router-dom";
import Navbar from './components/navbar';
import Body from './components/body';
import Footer from './components/footer';

function App() {
    // const [Content, setContent] = useState([])
    // const data =async() =>{ 
    //     const resp = await fetch("https://localhost:7291/api/Ingredients")
    //     const payload = await resp.json()
    //     setContent(payload)
    // }
    // useEffect(() => {
    //     data()
    // }, [])
    // console.log(Content)
    return (
        // <div>
            
        //     {Content.map(ing => <p key={ing.id}>{ing.name}</p>)}
        // </div>
        <div>
          <Navbar />
          <Body />
          <Footer />           
        </div>
      
    )
}


export default App;
