import chopp from '../photos/tomatochopp.jpg'
import fajitas from '../photos/fajitas.jpg'
import Login from './login'
import Register from './register'
import React from 'react'
import ReactDOM from 'react-dom';



    const login = <Login />
    const register = <Register />
    const Subscription = ({isShowing, hide}) => isShowing ? ReactDOM.createPortal(
<React.Fragment>

<div>
<button type="button" className="modal-close-button" data-dismiss="modal" aria-label="Close" onClick={hide}>
<span aria-hidden="true">&times;</span>
          </button>
            <div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-notify modal-info" role="document">
                
                <div class="modal-content text-center">
                
                <div class="modal-header d-flex justify-content-center">
                    <p class="heading">Subscriptions Types</p>
                </div>
    
                
                <div class="modal-body">
                    <div class="card">
                        <div class="view overlay">
                            <img class="card-img-top" src={chopp} alt="Card image cap"/>
                            <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>
    
                        <div class="card-body">
                            <h4 class="card-title">Free</h4>
                            <p class="card-text">We have a big selection of tasty recipes that you can try out.  </p>
                        </div>
    
                        <div class="card">
                            <div class="view overlay">
                                <img class="card-img-top" src={fajitas} alt="Card image cap"/>
                                <a href="#!">
                                <div class="mask rgba-white-slight"></div>
                                </a>
                            </div>
    
                            <div class="card-body">
                                <h4 class="card-title">Subscribed</h4>
                                <p class="card-text">When you decide to subscribe, you will have acces to even more recipes, you will be able to add your own tried and tested recipes.  </p>
                            </div>
    
            </div>
    
                </div>
    
                
                <div class="modal-footer flex-center">
                    <p>Intrested in subscribing? Please login or register first.</p>
                    
                    <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">Close</a>
                </div>
                </div>
                
            </div>
            </div>
    
            </div>
            </div>
</React.Fragment>, document.body
    ) : null;
   
  

export default Subscription;