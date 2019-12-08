import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './pages/home/home.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http'; 

import { MatDialogModule,  
         MatChipsModule, 
         MatListModule, 
         MatToolbarModule, 
         MatInputModule, 
         MatButtonModule, 
         MatCardModule, 
         MatFormFieldModule, 
         MatExpansionModule,
         MatGridListModule,
         MatIconModule } from "@angular/material"
import { Ng5SliderModule } from 'ng5-slider';

import {TextFieldModule} from '@angular/cdk/text-field';

import { AngularFireModule } from '@angular/fire';
import { AngularFireDatabaseModule } from '@angular/fire/database';
import { environment } from '../environments/environment.prod';
import { DeliveryComponent } from './pages/add/delivery/delivery.component';
import { BoxComponent } from './pages/add/box/box.component';
import { MapComponent } from './map/map.component';
import { LeafletModule } from '@asymmetrik/ngx-leaflet';
import { NotificationComponent } from './notification/notification.component';
import { DialogComponent } from './dialog/dialog.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { NgxGaugeModule } from 'ngx-gauge';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    DeliveryComponent,
    BoxComponent,
    MapComponent,
    NotificationComponent,
    DialogComponent,
    DashboardComponent
  ],
  imports: [
    
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FormsModule,
    HttpClientModule,
    MatButtonModule,
    MatCardModule,
    MatIconModule,
    MatGridListModule,
    MatInputModule,
    MatFormFieldModule,
    MatToolbarModule,
    MatExpansionModule,
    MatChipsModule,
    MatListModule,
    TextFieldModule,
    Ng5SliderModule,
    AngularFireModule.initializeApp(environment.firebase),
    AngularFireDatabaseModule,
    FormsModule,
    MatButtonModule,
    MatDialogModule,
    MatCardModule,
    AppRoutingModule,
    NgxGaugeModule,
    LeafletModule.forRoot(),
    BrowserAnimationsModule
  ],
  entryComponents: [DialogComponent],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
