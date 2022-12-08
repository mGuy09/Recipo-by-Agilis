
import './App.css';
import { useEffect, useState } from 'react';
import Navbar from './components/navbar';
import Body from './components/body';
import Footer from './components/footer';
import Subscription from './components/subscription' 
import useModal from './useModal';

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
          <Subscription />
          <Body />
          <Footer />           
        </div>
      
    )
}

function SubscriptionDisplay(){
    return <Subscription /> 
}

export default App;
