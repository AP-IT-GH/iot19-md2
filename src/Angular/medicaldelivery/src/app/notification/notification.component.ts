import { Component, OnInit, Inject } from '@angular/core';
import { VERSION, MatDialogRef, MatDialog, MatSnackBar, MAT_DIALOG_DATA } from '@angular/material';
import { DialogComponent } from '../dialog/dialog.component';

@Component({
  selector: 'app-notification',
  templateUrl: './notification.component.html',
  styleUrls: ['./notification.component.css']
})
export class NotificationComponent implements OnInit {



  constructor(public dialog: MatDialog){}
    

  
  ngOnInit() {

    }

    showDialog(){
      const dialogRef = this.dialog.open(DialogComponent,{
        width: '450px',
        height: '200px'
      }); 
      setTimeout(() => {
        dialogRef.close();
      }, 10000);
    }
  }


