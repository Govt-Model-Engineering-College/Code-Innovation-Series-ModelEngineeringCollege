import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Course } from 'src/app/global/models/course';
import { Organization } from '../../models/organization';
import {MatDialog} from '@angular/material/dialog';
import { CourseComponent } from '../course/course.component';


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  //courses: Course[];
  courses =[{_id:1},{_id:2},{_id:3},{_id:4},{_id:5},{_id:6},{_id:7}];
  organization :Organization;

  constructor(private router: Router, private dialog: MatDialog) { }

  ngOnInit(): void {
    //fetch courses
  }

  go(id :string) {
    this.router.navigate(['organization/course/'+id]);
  }

  openDialog() {
    const dialogRef = this.dialog.open(CourseComponent, {width: '600px'});
    dialogRef.afterClosed().subscribe(result => {
      console.log(`Dialog result: ${result}`);
    });
  }
  goHome() {
    this.router.navigate(['organization/home']);
  }

  goVerify() {
    this.router.navigate(['organization/verify']);
  }
}
