function subType(props) {
    return (
        <div className="card">
            <div className="view overlay">
                <img className="card-img-top" alt="Card image cap" >{props.src}</img>
                <a href="#!">
                    <div className="mask rgba-white-slight"></div>
                </a>
            </div>

            <div className="card-body">
                <h4 className="card-title">{props.title}</h4>
                <p className="card-text">{props.text}</p>
            </div>
        </div>    
    )
}

export default subType;