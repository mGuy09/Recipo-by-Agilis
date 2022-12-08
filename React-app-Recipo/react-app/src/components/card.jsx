import React from 'react'
import ReactDOM from 'react-dom';
import chopp from '../photos/tomatochopp.jpg'
import fajitas from '../photos/fajitas.jpg'
import Login from './login'
import Register from './register'

function Card() {
    const login = <Login />
    const register = <Register />
    return (
        <div>
            <div className="modal-header d-flex justify-content-center">
                <p className="heading">Subscriptions Types</p>
            </div>
            <div className="modal-body">
                <div className="card">
                    <div className="view overlay">
                        <img className="card-img-top" src={chopp} alt="Card image cap" />
                        <a href="#!">
                            <div className="mask rgba-white-slight"></div>
                        </a>
                    </div>

                    <div className="card-body">
                        <h4 className="card-title">Free</h4>
                        <p className="card-text">We have a big selection of tasty recipes that you can try out.  </p>
                    </div>

                    <div className="card">
                        <div className="view overlay">
                            <img className="card-img-top" src={fajitas} alt="Card image cap" />
                            <a href="#!">
                                <div className="mask rgba-white-slight"></div>
                            </a>
                        </div>

                        <div className="card-body">
                            <h4 className="card-title">Subscribed</h4>
                            <p className="card-text">When you decide to subscribe, you will have acces to even more recipes, you will be able to add your own tried and tested recipes.  </p>
                        </div>

                    </div>

                </div>


                <div className="modal-footer flex-center">
                    <p>Intrested in subscribing? Please login or register first.</p>
                </div>
            </div>



            <div className="modal fade show" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                aria-hidden="true">

                <div className="modal-dialog modal-notify modal-info" role="document">

                    <div className="modal-content text-center">

                    </div>
                </div>
            </div>
        </div>
    )
}
    

export default Card;