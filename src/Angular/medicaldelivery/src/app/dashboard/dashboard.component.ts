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
  
  valueTempBox1:any;
  valueHumBox1:any;
  valueGForceBox1:any;

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

  boxDatas: IBoxData[]

  constructor(private boxSvc: BoxService) { 
  }

  ngOnInit() {
    this.GetBoxData();    
    console.log("temp: " + this.valueTempBox1)
    console.log("id: " + this.id)
  }

  GetBoxData(){
    /*this.boxSvc.GetSingleBoxData(this.id).valueChanges().subscribe(box => {
      this.boxDatas = box

      box.filter(b => {
        this.valueTempBox1 = b.temperature.value
        this.valueHumBox1 = b.humidity.value
        this.valueGForceBox1 = b.position_orientation.GForce
      })
    })*/

    switch(this.id){
      case "box1": {
        this.boxSvc.GetSingleBoxData(this.id).valueChanges().subscribe(box => {
          this.boxDatas = box
    
          box.filter(b => {
            this.valueTempBox1 = b.temperature.value
            this.valueHumBox1 = b.humidity.value
            this.valueGForceBox1 = b.position_orientation.GForce
          })
        })
        break;
      }

      case "box2": {
        this.boxSvc.GetSingleBoxData(this.id).valueChanges().subscribe(box => {
          this.boxDatas = box
    
          box.filter(b => {
            this.valueTempBox1 = b.temperature.value
            this.valueHumBox1 = b.humidity.value
            this.valueGForceBox1 = b.position_orientation.GForce
          })

          console.log(this.valueHumBox1)
        })
        break;
      }
    }
  }
}
