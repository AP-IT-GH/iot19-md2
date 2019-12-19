import { Component, OnInit, Input } from '@angular/core';
import { IBoxData } from '../services/model/IBoxData';
import { BoxService } from '../services/box.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {

  @Input() id:any;

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
  gaugeValueTemp;
  gaugeLabel = "Temperature";
  gaugeAppendText = "°C";

  //Humidity
  gaugeValueHum;
  gaugeLabelHum = "Humidity";
  gaugeAppendHum = "Rh %";

  // GForce
  gaugeValueG;
  gaugeLabelG = "G force";
  gaugeAppendTextG = "G";

  boxDatas: IBoxData[]
  data: any;

  constructor(private boxSvc: BoxService) { 
  }

  ngOnInit() { 
    this.getBoxData();
  }

  getBoxData(){
    this.boxSvc.GetSingleBoxData(this.id).valueChanges().subscribe(box => {
      this.boxDatas = box

      this.data = box[box.length - 1]

      setInterval(() => {
        this.gaugeValueTemp =  this.data.Temperature.Value
        this.gaugeValueHum =  this.data.Humidity.Value
        this.gaugeValueG =  this.data.PositionOrientation.GForce
      }, 2000);

    })
  }
}
