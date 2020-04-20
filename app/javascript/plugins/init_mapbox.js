import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 100, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const isabelle = document.getElementById('isabelle');
  const roof = document.getElementById('roof');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ludohochet/ck9701x6917o71io3y3d9x7is'
      // style: 'mapbox://styles/mapbox/streets-v10'
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));
    map.addControl(new mapboxgl.NavigationControl());
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
    isabelle.addEventListener('click', () => {
      const isaCenter = JSON.parse(isabelle.dataset.markers);
      map.flyTo( {center: [isaCenter[0]["lng"], isaCenter[0]["lat"] ], zoom: 15});
    });
    roof.addEventListener('click', () => {
      const roofCenter = JSON.parse(roof.dataset.markers);
      map.flyTo( {center: [roofCenter[0]["lng"], roofCenter[0]["lat"] ], zoom: 15});
    });
  }
};


export { initMapbox };

