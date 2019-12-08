import { Component, OnInit } from '@angular/core';
import { BoxService } from 'src/app/services/box.service';
import { Options } from 'ng5-slider';
import { Router, ActivatedRoute } from '@angular/router';
import * as firebase from 'firebase/app';
import { IDelivery } from 'src/app/services/model/IDelivery';
import { IBox } from 'src/app/services/model/IBox';

@Component({
  selector: 'app-box',
  templateUrl: './box.component.html',
  styleUrls: ['./box.component.css']
})
export class BoxComponent implements OnInit {

  id: any;
  delivery: IDelivery[]

  boxes: IBox[]

  constructor(
    public route: Router, 
    public boxSvc: BoxService,     
    public activatedRoute: ActivatedRoute){
      this.id = this.activatedRoute.snapshot.paramMap.get('id')
      this.boxSvc.GetDeliveryById(this.id).valueChanges().subscribe(del => {
        this.delivery = del
      })

      this.boxSvc.GetAllBoxes().valueChanges().subscribe(box => {
        this.boxes = box
      })
  }

  ngOnInit() { 
  }

  add(box: IBox){
    this.boxSvc.AddBoxToDelivery(this.id, box)
    this.route.navigate(['home'])
  }

}
