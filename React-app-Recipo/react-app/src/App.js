import logo from './logo.svg';
import './App.css';
import agilislogo from './agilis-logo-small.png';
import recipologo from './image-recipo-logo.png';
import Ingredient from './components/ingredient'
import { useEffect, useState } from 'react';

function App() {
    const [Content, setContent] = useState([])
    const data =async() =>{ 
        const resp = await fetch("https://localhost:7291/api/Ingredients")
        const payload = await resp.json()
        setContent(payload)
    }
    useEffect(() => {
        data()
    }, [])
    console.log(Content)
    return (
        <div>
            
            {Content.map(ing => <p key={ing.id}>{ing.name}</p>)}
        </div>
        // <div>
        //     <nav class="navbar background">
        //         <ul class="nav-list">
        //             <div class="logo">
        //                 <img src={recipologo}
        //                     />
        //             </div>
        //             <li><a href="#ingredients">Ingredients</a></li>
        //             <li><a href="#recipes">Recipes</a></li>
        //             <li><a href='#contact'>Contact us</a></li>
        //         </ul>

        //         <div class="rightNav">
        //         <ul class="nav-list">
        //         <li><a href="#login">Login</a></li>
        //         </ul>
        //         </div>
        //     </nav>

        //     <section class="section">
        //         <div class="box-main">
        //             <div class="firstHalf">
        //                 <Ingredient item={Content}/>
        //                 <h1 class="text-big">
        //                     Our mission:
        //                 </h1>
        //                 <p class="text-small">
        //                     We bring you the fastest way to decide on what you are going to eat next. Just select the ingerdients you have in the house and we give you the receipe.
        //                 </p>
        //             </div>
        //         </div>
        //     </section>
           
           
        //     <footer className="footer">
        //     <div class="logo">
        //                 <img src={agilislogo}
        //                     />
        //             </div>
        //         <p className="text-footer">
        //             Copyright �-All rights are reserved
        //         </p>
        //     </footer>
        // </div>
    )
}


export default App;
