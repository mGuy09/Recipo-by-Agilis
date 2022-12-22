
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
import Axios, {  AxiosResponse } from 'axios';
import baseURL from "./endpoints"

function App() {

  // const [Content, setContent] = useState([])
  // const data =async() =>{
  //     const resp = await fetch(baseURL)
  //     const payload = await resp.json()
  //     setContent(payload)
    
  useEffect(() => {
    Axios.get(baseURL).then((AxiosResponse < any >) => {
      console.log(response.data);
    })
  }, []);
  // console.log(Content)
  
 
  return (
    <div>
      <Navbar />
      <Body />
      <Footer />
    </div>
      
  )


  function SubscriptionDisplay() {
    return <Subscription />
  }
}

export default App;
