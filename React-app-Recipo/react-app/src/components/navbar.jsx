
import recipologo from './image-recipo-logo.png';
import Subscription from './subscription'
import useModal from '../useModal';
import Modal from './modal'
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
        <li><Modal /></li>
        {/* <li><button className="button-default" onClick={toggle}> Subscription</button>
          <Subscription isShowing={isShowing} hide={toggle} /></li> */}
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