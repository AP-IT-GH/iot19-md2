import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { BoxService } from 'src/app/services/box.service';
import { IBoxData } from 'src/app/services/model/IBoxData';

@Component({
  selector: 'app-information',
  templateUrl: './information.component.html',
  styleUrls: ['./information.component.css']
})
export class InformationComponent implements OnInit {
  id: any;
  idbox: any;

  Boxdatas: IBoxData[]
  NodData: boolean = false

  constructor(public activatedRoute: ActivatedRoute, private boxSvc: BoxService){ 
      this.id = this.activatedRoute.snapshot.params['id'];
      this.idbox = this.activatedRoute.snapshot.params['idbox']
  }

  ngOnInit() {
    this.GetBoxInfo();
  }

  GetBoxInfo(){
    this.boxSvc.GetBoxData(this.idbox).valueChanges().subscribe(data => {
      this.Boxdatas = data     

      if(!this.Boxdatas){
        this.NodData = true
      }

    })  

  }

}
