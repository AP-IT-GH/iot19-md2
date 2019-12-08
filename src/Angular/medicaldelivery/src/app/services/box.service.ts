import { Injectable } from '@angular/core';
import { AngularFireDatabase, AngularFireObject, AngularFireList } from '@angular/fire/database'; 
import * as firebase from 'firebase/app';
import { IBox } from './model/IBox';
import { IDelivery } from './model/IDelivery';

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

  GetAllDeliveries(){
    this.Deliveries = this.db.list('/deliveries') as AngularFireList<IDelivery>
    return this.Deliveries
  }
  
  GetDeliveryById(id){
    this.Deliveries = this.db.list('/deliveries/' + id) as AngularFireList<IDelivery>
    return this.Deliveries
  }

  AddDelivery(delivery: IDelivery){
    this.db.object('/deliveries/' + delivery.Id + '/').set(delivery)
  }  

  AddBoxToDelivery(id: string, box: IBox){
    this.db.object('/deliveries/' + id).update({boxes: box.id})
  }
}