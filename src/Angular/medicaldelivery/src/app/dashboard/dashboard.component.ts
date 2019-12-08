import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  thresholdConfigTemp = {
    '0': {color: 'green'},
    '40': {color: 'orange'},
    '75.5': {color: 'red'}
  }

  size = 100

  // Temperature
  gaugeType = "arch";
  gaugeValueTemp = 80;
  gaugeLabel = "Temperature";
  gaugeAppendText = "°C";

  //Humidity
  gaugeTypeHum = "arch";
  gaugeValueHum = 80;
  gaugeLabelHum = "Humidity";
  gaugeAppendHum = "Rh %";

  // GForce
  gaugeTypeG = "arch";
  gaugeValueG = 1;
  gaugeLabelG = "G force";
  gaugeAppendTextG = "G";

  constructor() { }

  ngOnInit() {
  }

}
