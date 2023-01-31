import { React, Component, useState } from 'react';
import { Map, GoogleApiWrapper } from 'google-maps-react';
import { AiTwotoneThunderbolt } from 'react-icons/ai';


const apiKey = process.env.REACT_APP_GOOGLE_MAPS_API_KEY;


const mapStyles = {
    width: '100%',
    height: '100%'
};
const options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
};


function success(pos) {

    const crd = pos.coords;
    console.log(crd)
    console.log('Your current position is:');
    console.log(`Latitude : ${crd.latitude}`);
    console.log(`Longitude: ${crd.longitude}`);
    const lat = crd.latitude;
    const lng = crd.longitude;
    console.log(lat, lng)
    return lat, lng

}

function error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
}

 navigator.geolocation.getCurrentPosition(success, error, options);

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
                location

            />

        );
    }
}

export default GoogleApiWrapper({
    apiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY
})(MapContainer);

