import { React, Component, useState } from 'react';
import { Map, GoogleApiWrapper } from 'google-maps-react';
import { AiTwotoneThunderbolt } from 'react-icons/ai';
import { useEffect } from 'react';

const MapContainer = (props) => {
    // const apiKey = process.env.REACT_APP_GOOGLE_MAPS_API_KEY;
    const [coords, setCoords] = useState({});

    const mapStyles = {
        width: '100%',
        height: '100%'
    };
    const options = {
        enableHighAccuracy: true,
        timeout: 5000,
        maximumAge: 0
    };

    const success= (pos)=> {

        const crd = pos.coords;
        console.log(crd)
        console.log('Your current position is:');
        console.log(`Latitude : ${crd.latitude}`);
        console.log(`Longitude: ${crd.longitude}`);
        setCoords({
            lat: crd.latitude,
            lng: crd.longitude
        })
    }

    function error(err) {
        console.warn(`ERROR(${err.code}): ${err.message}`);
    }

    useEffect(() => {
        navigator.geolocation.getCurrentPosition(success, error, options);
    },[])
    return (
        <Map
            google={props.google}
            zoom={14}
            style={mapStyles}
            initialCenter={
                {
                    lat: coords.lat == undefined ? 0 : coords.lat ,
                    lng: coords.lng == undefined ? 0 : coords.lng
                }
            }
            location

        />

    );
}


export default GoogleApiWrapper({
    apiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY
})(MapContainer);

