import React from "react";
import agilislogo from './agilis-logo-small.png';

function Footer(){
    return(
        <footer className="footer">
        <div className="logo">
                    <img src={agilislogo}
                        />
                </div>
            <p className="text-footer">
                Copyright �-All rights are reserved
            </p>
        </footer>
    )
}

export default Footer;