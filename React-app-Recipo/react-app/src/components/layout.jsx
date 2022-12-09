import React from "react";
import {Outlet} from "react-router-dom";
import Navbar from "./navbar";
import Navbar from './components/navbar';
import Body from './components/body';
import Footer from './components/footer';

const Layout = () => {
  return (
    <div>   
      <Navbar />
      <Body />
      <Footer />
    </div>
     
  );
};

export default Layout;