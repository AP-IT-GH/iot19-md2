import { Component, OnInit, Input } from '@angular/core';
import { icon, latLng,Map, marker, point, polyline, tileLayer, LatLng, map } from 'leaflet';
import { BoxService } from '../services/box.service';
import { IBoxData } from '../services/model/IBoxData';
@Component({
  selector: 'app-map',
  templateUrl: './map.component.html',
  styleUrls: ['./map.component.css']
})
export class MapComponent implements OnInit {
  startPosition = [12, 12]; 
  endPosition = [51.229789, 4.417152];

  @Input() id:any;

// zoom  om je route tussen de bounds te tonen
  onMapReady(map: Map) {
    map.fitBounds(this.route.getBounds(), {
      padding: point(24, 24),
      maxZoom: 10,
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

  // marker om het begin aan te tonen


  // marker voor einde  aan te tonen
  Deliveryend = marker([ this.endPosition[0], this.endPosition[1] ], {
    icon: icon({
      iconSize: [ 41, 41 ],
      iconAnchor: [ 13, 41 ],
      iconUrl: 'assets/delivery-truck.png',
      shadowUrl: 'leaflet/marker-shadow.png'
    })
  });

  // Pad arr voor je route uit te stippelen
  route = polyline([]);

  // Layers control object met basislayers en overlay layers
  layersControl = {
    baseLayers: {
      'Street Maps': this.streetMaps,
      'Wikimedia Maps': this.wMaps
    },
    overlays: {
      'Deliveryend': this.Deliveryend,
      'route': this.route
    }
  };


  // Set the initial set of displayed layers (we could also use the leafletLayers input binding for this)
  options = {
    layers: [ this.streetMaps, this.route, this.Deliveryend ],
    zoom: 15,
    center: latLng([ 51.229789, 4.417152 ])
  };
  
  boxDatas: IBoxData[]
  data: any;

  constructor(private boxSvc: BoxService) { }

  ngOnInit() {
  /*
    let i = 0;
    let j = 0;

    setInterval(() => {
      this.UpdateLocation(i, j); 
      i = i + 0.001;
      j = j + 0.001;
    }, 2000);

   */

   setInterval(() => {
      this.update();
    }, 2000);
  }

  UpdateLocation(lat, long){
    if(lat == 0 && long == 0) return;
    this.route.addLatLng([lat, long]);
    this.Deliveryend.setLatLng([lat, long]);
  }

  update(){
    this.boxSvc.GetSingleBoxData(this.id).valueChanges().subscribe(box => {
      this.boxDatas = box

      this.data = box[box.length - 1]

/*       if(box.length >= 14){
        this.route = polyline(this.data.Location.Lat, this.data.Location.Long).remove();
      } */
      
      this.UpdateLocation(this.data.Location.Lat, this.data.Location.Long)
      
      console.log("lat: " + this.data.Location.Lat)
      console.log("long: " + this.data.Location.Long)
    })
  }

}
