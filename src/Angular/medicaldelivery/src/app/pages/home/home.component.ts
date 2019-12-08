import { Component, OnInit } from '@angular/core';
import { BoxService, IBox, IDelivery } from 'src/app/services/box.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  boxes: IBox[];
  deliveries: IDelivery[];

  constructor(
    private boxSvc: BoxService,
    private route: Router
    ) { }

  
  ngOnInit() {
    this.GetBoxes();
    this.GetDeliveries();
  }

  GetDeliveries(){
    this.boxSvc.GetAllDeliveries().valueChanges().subscribe(delivery => {
      this.deliveries = delivery;

      console.table(this.deliveries);
    })
  }

  GetBoxes(){
    this.boxSvc.GetAllBoxes().valueChanges().subscribe(box=> {
      this.boxes = box;

      console.table(this.boxes)
    })
  }

  GoToSingleDelivery(id: string) {
    this.route.navigate(['/delivery/'+ id + '/addBox']);
  }

}
