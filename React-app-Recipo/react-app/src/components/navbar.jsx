import React from "react";
import recipologo from './image-recipo-logo.png';

function Navbar() {
  return (
    <nav className="navbar background">
                <ul className="nav-list">
                    <div className="logo">
                        <img src={recipologo}
                            />
                    </div>
                    <li><a href="#ingredients">Ingredients</a></li>
                    <li><a href="#recipes">Recipes</a></li>
                    <li><a href='#contact'>Contact us</a></li>
                </ul>

                <div className="rightNav">
                <ul className="nav-list">
                <li><a href="#login">Login</a></li>
                </ul>
                </div>
            </nav>
  );
}

export default Navbar;