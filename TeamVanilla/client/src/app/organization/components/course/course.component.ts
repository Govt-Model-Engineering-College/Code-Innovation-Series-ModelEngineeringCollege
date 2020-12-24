import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material/dialog';
import { Credentials } from 'src/app/global/shared/auth';
import { Course } from '../../../global/models/course';
import { CourseService } from '../../services/course.service';

@Component({
  selector: 'app-course',
  templateUrl: './course.component.html',
  styleUrls: ['./course.component.scss']
})
export class CourseComponent implements OnInit {

  course: Course = {
    name: "",
    classes: [],
    _id: "",
    posts: [],
    students: [],
    teachers: [],
    organization: ""
  };

  bool: Boolean;

  constructor(private cs: CourseService, private dialog: MatDialog, private cred: Credentials) {
   }

  ngOnInit(): void {
    this.course.name="";
    this.course.organization = this.cred._id;
  }

  onSubmit() {
    console.log(this.course);
    this.cs.createCourse(this.course).subscribe(course=>{
    this.dialog.closeAll();
    })
  }
}
