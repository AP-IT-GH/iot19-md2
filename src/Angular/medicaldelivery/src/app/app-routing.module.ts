import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { DeliveryComponent } from './pages/add/delivery/delivery.component';
import { BoxComponent } from './pages/add/box/box.component';
import { MapComponent } from './map/map.component';
import { InformationComponent } from './pages/information/information.component';


const routes: Routes = [
  { path: '', component: HomeComponent },  
  { path: 'home', component: HomeComponent },
  { path: 'delivery', component: DeliveryComponent },
  { path: 'delivery/:id/addBox', component: BoxComponent },
  { path: 'map' , component: MapComponent},
  { path: 'info/:id/:idbox', component: InformationComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
