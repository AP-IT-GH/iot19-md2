import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { DeliveryComponent } from './pages/add/delivery/delivery.component';
import { BoxComponent } from './pages/add/box/box.component';


const routes: Routes = [
  { path: '', component: HomeComponent },  
  { path: 'home', component: HomeComponent },
  { path: 'addBox', component: BoxComponent},
  { path: 'delivery', component: DeliveryComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
