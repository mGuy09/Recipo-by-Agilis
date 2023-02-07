import React from 'react'
import MapLocation from './MapLocation';
import { useJsApiLoader, GoogleMap, Marker, Circle, useLoadScript } from "@react-google-maps/api";
import Supermarkets from './Supermarkets';
import Search from "./Search";
import usePlacesAutocomplete, {
  getGeocode,
  getLatLng,
} from "use-places-autocomplete";

const google = window.google;

let service;
const libraries = ["places"]

// const shops = Supermarkets();
// console.log(shops)

const mapContainerStyle = {
  height: "100vh",
  width: "100vw"
};

function DisplayMap() {
  const location = MapLocation();
  const center = {
    lat: location.coordinates.lat,
    lng: location.coordinates.lng
  };
  const { isLoaded, loadError } = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY,
    libraries
  });

  const mapRef = React.useRef();
  const onMapLoad = React.useCallback(map => {
    mapRef.current = map;
  }, []);
  const panTo = React.useCallback(({ lat, lng }) => {
    mapRef.current.panTo({ lat, lng });
    mapRef.current.setZoom(12);
    let map = mapRef.current;
    let request = {
      location: { lat, lng },
      radius: "500",
      type: ["supermarket"]
    };

    service = new google.maps.places.PlacesService(mapRef.current);
    service.nearbySearch(request, callback);
    function callback(result, status) {
      if (status === google.maps.places.PlacesServiceStatus.OK) {
        for (let i = 0; i < result.lenght; i++) {
          let place = result[i];
          new google.maps.Marker({
            position: place.geometry.location,
            map
          });
        }
      }
    }
  }, []);
  return (
    <div>
      <Search panTo={panTo} />
      <GoogleMap
        id='map'
        mapContainerStyle={mapContainerStyle}
        zoom={8}
        center={parseFloat(location.coordinates.lat), parseFloat(location.coordinates.lng)}
        onLoad={onMapLoad}
      />
    </div>
  );
}
// const { isLoaded } = useJsApiLoader({
//   googleMapsApiKey: process.env.REACT_APP_GOOGLE_MAPS_API_KEY,
//   libraries: libraries,
// })


//   if (!isLoaded) return <div>andrei e enervant</div>
//   return (
//     <div className='w-full h-[70vh]'>
//       <GoogleMap
//         defaultCenter={{ lat: 0, lng: 0 }}
//         center={location.coordinates}
//         zoom={15}
//         mapContainerStyle={{ width: '100%', height: '100%' }}
//         options={
//           {
//             zoomControl: false,
//             streetViewControl: false,
//             mapTypeControl: false,
//             fullscreenControl: false
//           }
//         } >
//         <Circle
//           center={location.coordinates}
//           options={{
//             strokeColor: '#FF0000',
//             strokeOpacity: 0.1,
//             strokeWeight: 2,
//             fillColor: '#FF0000',
//             fillOpacity: 0.05,
//             clickable: false,
//             draggable: false,
//             editable: false,
//             visible: true,
//             radius: 300,
//             zIndex: 1
//           }} />

//         <Marker position={location.coordinates} />

//       </GoogleMap>
//     </div>
//   )


export default DisplayMap

