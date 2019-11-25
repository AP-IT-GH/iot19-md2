import { Component, OnInit } from '@angular/core';
import { Options } from 'ng5-slider';
import { Router } from '@angular/router';
import { BoxService } from 'src/app/services/box.service'

@Component({
  selector: 'app-add',
  templateUrl: './add.component.html',
  styleUrls: ['./add.component.css']
})
export class AddComponent implements OnInit {  
  TempMin: number = -6;
  TempHigh: number = 40;
  TempOptions: Options = {
    floor: -40,
    ceil: 100,
    step: 0.1,
    translate: (value: number): string => {
      return value + '°C';
    }
  };

  HumMin: number = 18;
  HumHigh: number = 78;
  HumOptions: Options = {
    floor: 0,
    ceil: 100,
    step: 0.1,
    translate: (value: number): string => {
      return value + '%';
    }
  };

  transporterName: string;
  destination: string;
  description: string;  
  Boxes: any;

  constructor(public route: Router, public boxSvc: BoxService) { }

  ngOnInit() {
    
  }

  Add(){
    this.route.navigateByUrl("/home")
  }

}
