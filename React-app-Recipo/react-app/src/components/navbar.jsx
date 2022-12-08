
import recipologo from './image-recipo-logo.png';
import Subscription from './subscription'
import useModal from '../useModal';

function Navbar() {
  const clickHandler = () => {
    <Subscription />
  }
  const {isShowing, toggle} = useModal();
  return (
    <nav className="navbar background">
      <ul className="nav-list">
          <div className="logo">
              <img src={recipologo}
                  />
          </div>  
          <li><a href="#ingredients">Ingredients</a></li>
          <button classNama="button-default" onClick ={toggle}> Subscription</button>
          <Subscription isShowing={isShowing} hide={toggle} />
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