import { Route, Routes } from "react-router";
import Footer from "./Components/Footer";
import Navbar from "./Components/Navbar";
import Dashboard from "./Pages/Dashboard";
import Ingredients from "./Pages/Ingredients"
import Home from "./Pages/Home";
import Login from "./Pages/Login";
import Subscriptions from "./Pages/Subscriptions";


function App() {
  return (
    <div>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home/>} />
        <Route path='/Login' element={<Login/>} />
        <Route path="/Register" element='' />
        <Route path='/Dashboard' element={<Dashboard/>} />
        <Route path="/Ingredients" element={<Ingredients/>} />
        <Route path='/Subscriptions' element={<Subscriptions />}/>
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
