import { Component, OnInit } from '@angular/core';
import { IDelivery, IBox, BoxService } from 'src/app/services/box.service';
import { Options } from 'ng5-slider';
import { Router } from '@angular/router';
import * as firebase from 'firebase/app';

@Component({
  selector: 'app-box',
  templateUrl: './box.component.html',
  styleUrls: ['./box.component.css']
})
export class BoxComponent implements OnInit {

  delivery: IDelivery;  
  box: IBox = {  
    "Delivery": null,
    "TemperatureBoundary": {MinValue: 15, HighValue: 55},
    "HumidityBoundary": {MinValue: 0, HighValue: 100}, 
    "boxId": null, 
    "createdByUid": null
  };

  TempOptions: Options = {
    floor: -40,
    ceil: 100,
    step: 0.1,
    translate: (value: number): string => {
      return value + '°C';
    }
  };

  HumOptions: Options = {
    floor: 0,
    ceil: 100,
    step: 0.1,
    translate: (value: number): string => {
      return value + '%';
    }
  };

  constructor(public route: Router, public boxSvc: BoxService){
  }

  ngOnInit() { 
  }

  Add(){
    var myRef = firebase.database().ref().push();
    var key = myRef.key;

    this.box = {
      Delivery: this.delivery,
      TemperatureBoundary: this.box.TemperatureBoundary,
      HumidityBoundary: this.box.HumidityBoundary,
      createdByUid: null,
      boxId: key
    }

    this.boxSvc.AddBox(this.box);
    this.route.navigateByUrl("/home")
  }

}
