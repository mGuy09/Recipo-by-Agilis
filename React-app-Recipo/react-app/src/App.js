
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
import Subscription from './components/subscription' 
import axios, {AxiosResponse} from 'axios';

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
  
  // useEffect(() => {
  //   axios.get('url...').then((response: AxiosResponse<any>) => {
  //     console.log(response.data);
  //   })
  // }, [])
    return (
        // <div>
            
        //     {Content.map(ing => <p key={ing.id}>{ing.name}</p>)}
        // </div>
        <div>
          <Navbar  />
          <Body />
          <Footer />           
        </div>
      
    )
}

function SubscriptionDisplay(){
    return <Subscription /> 
}

export default App;
