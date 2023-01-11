import { Route, Routes } from "react-router";
import Footer from "./Components/Footer";
import Navbar from "./Components/Navbar";
import Dashboard from "./Pages/Dashboard";
import Ingredients from "./Pages/Ingredients"
import Home from "./Pages/Home";
import Login from "./Pages/Login";
import Subscriptions from "./Pages/Subscriptions";
import Register from "./Pages/Register";
import About from "./Pages/About";
import Contact from "./Pages/Contact";

function App() {

  return (
    <div>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path='/Login' element={<Login />} />
        <Route path="/Register" element={<Register />} />
        <Route path='/Dashboard' element={<Dashboard />} />
        <Route path="/Ingredients" element={<Ingredients />} />
        <Route path='/Subscriptions' element={<Subscriptions />} />
        <Route path="/About" element={<About />} />
        <Route path='/Contact' element={<Contact />} />
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
