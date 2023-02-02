
import { useEffect } from 'react'
import { useState } from 'react'

const MapLocation = () => {
    const [location, setLocation] = useState({
        loaded: false,
        coordinates: { lat: '', lng: '' }
    })

    const onSuccess = (location) => {
        setLocation({
            loaded: true,
            coordinates: {
                lat: location.coords.latitude,
                lng: location.coords.longitude
            }

        })
        console.log(location.coords.latitude, location.coords.longitude)
    }
    const onError = error => {
        setLocation({
            loaded: true,
            error,
        })
    }
    useEffect(() => {
        if (!("geolocation" in navigator)) {
            onError({
                code: 0,
                message: "Geolocation not available"
            })
        }
       navigator.geolocation.getCurrentPosition(onSuccess, onError, { enableHighAccuracy: true, })
       
    }, [])
    return (
        location
    )
}

export default MapLocation