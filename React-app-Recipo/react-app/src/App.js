import { Route, Routes } from "react-router";
import Footer from "./Components/Footer";
import Navbar from "./Components/Navbar";
import Dashboard from "./Pages/Dashboard";
import Ingredients from "./Pages/Ingredients"
import Home from "./Pages/Home";
import Login from "./Pages/Login";
import Register from "./Pages/Register";


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
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
