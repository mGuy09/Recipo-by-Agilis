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
import React, { useState } from "react";
import NotFound from "./Pages/NotFound";
import Checkout from "./Pages/Checkout";


function App() {
  return (
    <div>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path='/Login' element={<Login />} />
        <Route path="/Register" element={<Register />} />
        <Route path='/Dashboard' element={<Dashboard />} />
        <Route path="/Ingredients/:id" element={<Ingredients />} />
        <Route path='/Subscriptions' element={<Subscriptions />} />
        <Route path="/About" element={<About />} />
        <Route path='/Contact' element={<Contact />} />
        <Route path='/404notfound' element={<NotFound />} />
        <Route path="/Checkout" element={<Checkout />} />
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
