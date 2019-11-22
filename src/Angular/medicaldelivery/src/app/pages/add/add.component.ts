import { Component, OnInit } from '@angular/core';
import { Options, LabelType } from 'ng5-slider';

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
    translate: (value: number): string => {
      return value + '°C';
    }
  };

  HumMin: number = 18;
  HumHigh: number = 78;
  HumOptions: Options = {
    floor: 0,
    ceil: 100,
    translate: (value: number): string => {
      return value + '%';
    }
  };
  
  constructor() { }

  ngOnInit() {
  }

}
