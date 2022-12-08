import React from 'react';
import agilislogo from './agilis-logo-small.png';
import recipologo from './image-recipo-logo.png';

function Home() {
    return (
        <div>
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

                <div class="rightNav">
                <ul class="nav-list">
                <li><a href="#login">Login</a></li>
                </ul>
                </div>
            </nav>

            <section class="section">
                <div class="box-main">
                    <div class="firstHalf">
                        <h1 class="text-big">
                            Our mission:
                        </h1>
                        <p class="text-small">
                            We bring you the fastest way to decide on what you are going to eat next. Just select the ingerdients you have in the house and we give you the receipe.
                        </p>
                    </div>
                </div>
            </section>
           
           
            <footer className="footer">
            <div class="logo">
                        <img src={agilislogo}
                            />
                    </div>
                <p className="text-footer">
                    Copyright �-All rights are reserved
                </p>
            </footer>
        </div>
    );
}

export default Home;