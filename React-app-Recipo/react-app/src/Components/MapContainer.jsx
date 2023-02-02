

import React from 'react'
import MapLocation from './MapLocation';
import { useJsApiLoader, GoogleMap, Marker } from '@react-google-maps/api'

const MapContainer = () => {
  const location = MapLocation();
  console.log(location)
  const { isLoaded } = useJsApiLoader({ googleMapsApiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY })
  if (!isLoaded) return <div>andrei e enervant</div>
  return (
    <div className='w-full h-[70vh]'>
      {/* {
        location.loaded ? JSON.stringify(location) : "Location data not available"
      } */}
      <GoogleMap
        center={location.coordinates}
        zoom={15}
        mapContainerStyle={{ width: '100%', height: '100%' }}
        options={
          {
            zoomControl: false,
            streetViewControl: false,
            mapTypeControl: false,
            fullscreenControl: false
          }
        } >
        <Marker position={location.coordinates}/>
      </GoogleMap>
    </div>
  )
}

export default MapContainer

