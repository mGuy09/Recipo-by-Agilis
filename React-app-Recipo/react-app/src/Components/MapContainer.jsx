import React from 'react'
import MapLocation from './MapLocation';
import { useJsApiLoader, GoogleMap, Marker, LoadScript } from '@react-google-maps/api'


const MapContainer = () => {
  const location = MapLocation();
  const { isLoaded } = useJsApiLoader({ googleMapsApiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY })
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
        <Marker position={location.coordinates} />
      </GoogleMap>
    </div>
  )
}

export default MapContainer

