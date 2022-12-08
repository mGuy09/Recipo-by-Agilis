import './App.css';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Layout from "./pages/layout";
import Home from "./pages/home";
import Ingredients from "./pages/ingredients";
import Login from "./pages/login";
import Register from "./pages/register";
import Navbar from "./pages/navbar";


 function App() {
    return (
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<Layout />}>
            <Route index element={<Home />} />
            <Route path="ingredients" element={<Ingredients />} />
            <Route path="login" element={<Login />} />
            <Route path="register" element={<Register />} />
          </Route>
        </Routes>
      </BrowserRouter>
    );
  }
  
 


export default App;
