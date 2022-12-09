import agilislogo from './agilis-logo-small.png';

function Footer() {
    return (
        <footer className="footer">
            <div className="logo">
                <img src={agilislogo} alt="footer img" />
            </div>
            <p className="text-footer">
                Copyright &copy; All rights are reserved
            </p>
        </footer>
    )
}

export default Footer;