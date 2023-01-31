import { React, Component } from 'react';
import { Loader } from '@googlemaps/js-api-loader';
import { Wrapper } from "@googlemaps/react-wrapper";
import { Map, GoogleApiWrapper } from 'google-maps-react';


const apiKey = process.env.REACT_APP_GOOGLE_MAPS_API_KEY;


const mapStyles = {
    width: '100%',
    height: '100%'
};

export class MapContainer extends Component {
    render() {
        return (
            <Map
                google={this.props.google}
                zoom={14}
                style={mapStyles}
                initialCenter={
                    {
                        lat: 45,
                        lng: 25
                    }
                }
            />
        );
    }
}

export default GoogleApiWrapper({
    apiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY
})(MapContainer);


// const loader = new Loader({
//     apiKey: apiKey,
//     version: 'weekly',
//     libraries: ["places"],
// });

// loader.load().then(() => {
//     //use google.maps in application
// }).catch((e) => {
//     //handle error
// });

// const MyMap = () => (
//     <Wrapper apiKey={apiKey}>
//         <MyMap />
//     </Wrapper>
// )

// const Map = () => {
//     return (
//         <div>Map</div>
//     )
// }

// export default Map