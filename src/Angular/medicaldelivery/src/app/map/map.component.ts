import { Component, OnInit } from '@angular/core';
import { icon, latLng,Map, marker, point, polyline, tileLayer } from 'leaflet';
@Component({
  selector: 'app-map',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.css']
})
export class MapComponent implements OnInit {
// zoom  om je route tussen de bounds te tonen
  onMapReady(map: Map) {
    map.fitBounds(this.route.getBounds(), {
      padding: point(24, 24),
      maxZoom: 12,
      animate: true
    });
  }

  // Def basislayers van onze map
  streetMaps = tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    detectRetina: true,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  });
  wMaps = tileLayer('http://maps.wikimedia.org/osm-intl/{z}/{x}/{y}.png', {
    detectRetina: true,
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  });

  // marker voor einde  aan te tonen
  Deliveryend = marker([ -29.297858, 27.454434 ], {
    icon: icon({
      iconSize: [ 25, 41 ],
      iconAnchor: [ 13, 41 ],
      iconUrl: 'leaflet/marker-icon.png',
      shadowUrl: 'leaflet/marker-shadow.png'
    })
  });

  // marker om het begin aan te tonen
  deliveryStart = marker([ -29.142768, 26.262815 ], {
    icon: icon({
      iconSize: [ 25, 41 ],
      iconAnchor: [ 13, 41 ],
      iconUrl: 'leaflet/marker-icon.png',
      shadowUrl: 'leaflet/marker-shadow.png'
    })
  });

  // Pad arr voor je route uit te stippelen
  route = polyline([[-29.142768, 26.262815 ],
    [ -29.134879, 26.271583 ],
    [ -29.194221, 26.421989],
    [-29.212130, 26.475675 ],
    [ -29.277201, 26.580948],
    [ -29.259529, 26.625816 ],
    [-29.233107, 26.831753 ],
    [ -29.246216, 26.951963 ],
    [-29.202505, 27.129920 ],
    [ -29.198810, 27.245035],
    [ -29.220116, 27.295332],
    [ -29.237525, 27.339296],
    [-29.255026, 27.379141 ],
    [ -29.284071, 27.406363 ],
    [ -29.297858, 27.454434 ]]);

  // Layers control object met basislayers en overlay layers
  layersControl = {
    baseLayers: {
      'Street Maps': this.streetMaps,
      'Wikimedia Maps': this.wMaps
    },
    overlays: {
      'Deliveryend': this.Deliveryend,
      'deliveryStart': this.deliveryStart,
      'route': this.route
    }
  };


  // Set the initial set of displayed layers (we could also use the leafletLayers input binding for this)
  options = {
    layers: [ this.streetMaps, this.route, this.Deliveryend, this.deliveryStart ],
    zoom: 7,
    center: latLng([ 46.879966, -121.726909 ])
  };

  constructor() { }

  ngOnInit() {
  }

}
