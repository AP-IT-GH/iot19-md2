import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { BoxService } from 'src/app/services/box.service';
import { IBoxData } from 'src/app/services/model/IBoxData';
import { IBox } from 'src/app/services/model/IBox';

@Component({
  selector: 'app-information',
  templateUrl: './information.component.html',
  styleUrls: ['./information.component.css']
})
export class InformationComponent implements OnInit {
  id: any;
  idbox: any;

  Boxdatas: IBoxData[]
  data:any
  boxInfo: IBox

  constructor(public activatedRoute: ActivatedRoute, private boxSvc: BoxService, public route: Router ){ 
      this.id = this.activatedRoute.snapshot.params['id'];
      this.idbox = this.activatedRoute.snapshot.params['idbox']
  }

  ngOnInit() {
    this.GetBoxInfo();
    this.SingleBox();

  }

  GetBoxInfo(){
    this.boxSvc.GetSingleBoxData(this.idbox).valueChanges().subscribe(box => {
      this.Boxdatas = box

      this.data = box[box.length - 1]
    })  
  }

  SingleBox(){
    this.boxSvc.GetSingleBoxOfDelivery(this.id, this.idbox).valueChanges().subscribe(box => {
      this.boxInfo = box
    })
  }

  Delete(){
    this.boxSvc.DeleteBoxFromDelivery(this.id, this.idbox)
    this.route.navigate(['home'])
  }

}
