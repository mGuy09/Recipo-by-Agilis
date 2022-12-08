
import recipologo from './image-recipo-logo.png';
import Subscription from './subscription'
import useModal from '../useModal';
import ModalSubscription from './modalSubscrip'
import Login from './login'

function Navbar() {

  const { isShowing, toggle } = useModal();
  return (
    <nav className="navbar background">
      <ul className="nav-list">
        <div className="logo">
          <img src={recipologo}
          />
        </div>
        <li><a href="#ingredients">Ingredients</a></li>
        <li><ModalSubscription /></li>
        <li><a href='#contact'>Contact us</a></li>
      </ul>

      <div className="rightNav">
        <ul className="nav-list">
          <li><a href="#login">Login </a></li>
        </ul>
      </div>
    </nav>
  );
}

export default Navbar;