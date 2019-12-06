import { Injectable } from '@angular/core';
import { AngularFireDatabase, AngularFireObject, AngularFireList } from '@angular/fire/database'; 
import * as firebase from 'firebase/app';

@Injectable({
  providedIn: 'root'
})
export class BoxService {

  IsAdded: boolean = false;

  Boxes: AngularFireList<any>;    // Reference to box data list, its an Observable
  Box: AngularFireObject<IBox>;   // Reference to box object, its an Observable too
  
  Deliveries: AngularFireList<any>
  Delivery: AngularFireObject<IDelivery>

  constructor(public db: AngularFireDatabase) {
  }

  GetAllBoxes(){
    this.Boxes = this.db.list('/boxes') as AngularFireList<IBox[]>
    return this.Boxes
  }

  AddBox(box: IBox){
    this.db.object('/boxes/' + box.boxId).set(box);
  }

  GetAllDeliveries(){
    this.Deliveries = this.db.list('/deliveries') as AngularFireList<IDelivery>
    return this.Deliveries
  }

  AddDelivery(delivery: IDelivery){
    this.db.object('/deliveries/' + delivery.id + '/').set(delivery)
  }
}

export interface ITemperatureBoundary{
  MinValue: number;
  HighValue: number;
}

export interface IHumidityBoundary{
  MinValue: number;
  HighValue: number;
}

export interface IDelivery{
  id: string;
  Transportername: string;
  BeginPoint: string;
  EndPoint: string;
  Description: string;

}

export interface IBox{
  createdByUid: string;
  boxId: any;
  Delivery: IDelivery;
  TemperatureBoundary: ITemperatureBoundary;
  HumidityBoundary: IHumidityBoundary;
}
