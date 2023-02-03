import React from 'react'
import MapLocation from './MapLocation';
import { useJsApiLoader, GoogleMap, Marker, Circle } from '@react-google-maps/api'
import Supermarkets from './Supermarkets';

const MapContainer = () => {
  const location = MapLocation();
  const libraries = ["places"]
  const { isLoaded } = useJsApiLoader({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY,
    libraries: libraries,
  })

  if (!isLoaded) return <div>andrei e enervant</div>

  return (
    <div className='w-full h-[70vh]'>
      <GoogleMap
        defaultCenter={{ lat: 0, lng: 0 }}
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
        {/* <Circle
          center={location.coordinates}
          options={{
            strokeColor: '#FF0000',
            strokeOpacity: 0.8,
            strokeWeight: 2,
            fillColor: '#FF0000',
            fillOpacity: 0.35,
            clickable: false,
            draggable: false,
            editable: false,
            visible: true,
            radius: 30000,
            zIndex: 1
          }} /> */}
        <Marker position={location.coordinates} />
      </GoogleMap>
    </div>
  )
}

export default MapContainer

