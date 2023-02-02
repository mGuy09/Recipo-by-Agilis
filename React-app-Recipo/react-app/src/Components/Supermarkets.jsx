import { React, useEffect, useState } from 'react';
import axios from 'axios'
import MapLocation from './MapLocation';
import MapContainer from './MapContainer';
import { useJsApiLoader, GoogleMap, Marker, Circle } from '@react-google-maps/api'
const Supermarkets = () => {

  // const URL = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=mega&inputtype=textquery&locationbias=circle%3A2000%4047.6918452%2C-122.2226413&fields=formatted_address%2Cname%2Crating%2Copening_hours%2Cgeometry&key=${process.env.REACT_APP_GOOGLE_MAPS_API_KEY}';
const [shopsList, setShopList] = useState([])
  const userLocation = MapLocation();
  const map = MapContainer()

  const shops = {
    location: userLocation.coordinates,
    radius: 500,
    query: 'supermarket',
  }

  const service = map.PlacesService();
  service.textSearch(shops, callback)
}

function callback(results, status) {
  if (status == google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      var place = results[i];
      Marker = (results[i]);
    }
  }

  return (
    shops
  )
}

export default Supermarkets