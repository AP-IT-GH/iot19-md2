import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  EndCap ="round"
  
  thresholdConfigTemp = {
    '-40': {color: '#00ff00'},
    '30': {color: 'orange'},
    '60': {color: 'red'}
  }
  
  thresholdConfigHum = {
    '0': {color: '#a1caff'},
    '30': {color: '#61a4fa'},
    '75': {color: '#0066e8'}
  }

  size = 120

  // Temperature
  gaugeType = "arch";
  gaugeValueTemp = 25;
  gaugeLabel = "Temperature";
  gaugeAppendText = "°C";

  //Humidity
  gaugeValueHum = 10;
  gaugeLabelHum = "Humidity";
  gaugeAppendHum = "Rh %";

  // GForce
  gaugeValueG = 0.3;
  gaugeLabelG = "G force";
  gaugeAppendTextG = "G";

  constructor() { }

  ngOnInit() {
  }

}
