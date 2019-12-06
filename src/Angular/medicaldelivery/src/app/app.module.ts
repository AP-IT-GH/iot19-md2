import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './pages/home/home.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { HttpClientModule } from '@angular/common/http'; 

import { MatChipsModule, MatListModule, MatToolbarModule, MatInputModule, MatButtonModule, MatCardModule, MatFormFieldModule, MatExpansionModule } from "@angular/material"
import { MatIconModule } from '@angular/material/icon';
import { Ng5SliderModule } from 'ng5-slider';

import {TextFieldModule} from '@angular/cdk/text-field';

import { AngularFireModule } from '@angular/fire';
import { AngularFireDatabaseModule } from '@angular/fire/database';
import { environment } from '../environments/environment.prod';
import { DeliveryComponent } from './pages/add/delivery/delivery.component';
import { BoxComponent } from './pages/add/box/box.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    DeliveryComponent,
    BoxComponent
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
    MatInputModule,
    MatFormFieldModule,
    MatToolbarModule,
    MatExpansionModule,
    MatChipsModule,
    MatListModule,
    TextFieldModule,
    Ng5SliderModule,
    AngularFireModule.initializeApp(environment.firebase),
    AngularFireDatabaseModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
