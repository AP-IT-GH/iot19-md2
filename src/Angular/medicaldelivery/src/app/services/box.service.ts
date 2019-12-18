import { Injectable, NgZone } from '@angular/core';
import { AngularFireDatabase, AngularFireObject, AngularFireList } from '@angular/fire/database'; 
import { IBox } from './model/IBox';
import { IDelivery } from './model/IDelivery';
import * as firebase from 'firebase/app';
import { ThrowStmt } from '@angular/compiler';
import { IBoxData } from './model/IBoxData';

@Injectable({
  providedIn: 'root'
})
export class BoxService {

  IsAdded: boolean = false;

  Boxes: AngularFireList<any>;    // Reference to box data list, its an Observable
  Box: AngularFireObject<IBox>;   // Reference to box object, its an Observable too
  
  Deliveries: AngularFireList<any>
  Delivery: AngularFireObject<IDelivery>

  BoxDatas: AngularFireList<any>
  BoxData: AngularFireObject<IBoxData>

  constructor(private zone: NgZone, public db: AngularFireDatabase) {
    this.db.database.ref("/boxData/").on("child_added",(snapshot)=>{
      var boxData: IBoxData[] = [];
      boxData = Object.values(snapshot.val()).map((box:IBoxData)=>{
        return box;
      });

      console.log(boxData)
    })
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

  GetSingleBoxData(id){
    this.BoxDatas = this.db.list('/boxData/' + id) as AngularFireList<IBoxData>
    return this.BoxDatas
  }
  
  GetBoxData(){
    return this.BoxData = this.db.object('/boxData')
  }

  GetSingleBoxOfDelivery(deliveryID: string, boxID){
    this.Box = this.db.object('/deliveries/' + deliveryID + '/boxes/' + boxID + '/') as AngularFireObject<IBox>
    return this.Box
  }

  AddDelivery(delivery: IDelivery){
    this.db.object('/deliveries/' + delivery.Id + '/').set(delivery)
  }  

  AddBoxToDelivery(id: string, box: IBox){
    this.db.object('/deliveries/' + id + "/boxes/" + box.id + '/').set(box)
  }

  DeleteBoxFromDelivery(deliveryID:string, boxID: IBox){
    this.db.object('/deliveries/' + deliveryID + '/boxes/' + boxID + '/').remove()
  }

  Key(){
    return firebase.database().ref().push().key;
  }

  objectValues(obj){
    return Object.values(obj);
  }

}