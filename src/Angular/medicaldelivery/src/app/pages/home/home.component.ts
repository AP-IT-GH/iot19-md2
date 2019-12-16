import { Component, OnInit } from '@angular/core';
import { BoxService} from 'src/app/services/box.service';
import { Router } from '@angular/router';
import { IBox } from 'src/app/services/model/IBox';
import { IDelivery } from 'src/app/services/model/IDelivery';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  boxes: IBox[];
  deliveries: IDelivery[];

  test: any 

  hasNoBox: boolean = false
  constructor(
    private boxSvc: BoxService,
    private route: Router
    ) {
    }

  
  ngOnInit() {
    this.GetBoxes();
    this.GetDeliveries();
  }

  GetDeliveries(){
    this.boxSvc.GetAllDeliveries().valueChanges().subscribe(delivery => {
      this.deliveries = delivery;
      
      console.log(this.deliveries)

      delivery.filter(d => {
        console.log("length: "+ d.boxes.lenght)
      })

    })
  }

  GetBoxes(){
    this.boxSvc.GetAllBoxes().valueChanges().subscribe(box=> {
      this.boxes = box;

      console.log(this.boxes)
    })
  }

  DeleteBox(DeliveryID, BoxID){
    this.boxSvc.DeleteBoxFromDelivery(DeliveryID, BoxID)
  }

  GoToSingleDelivery(id: string) {
    this.deliveries
    this.route.navigate(['/delivery/'+ id + '/addBox']);
  }

  GoToInfo(id: string, boxid){
    this.route.navigate(['info/' + id + "/" + boxid])
  }

}
