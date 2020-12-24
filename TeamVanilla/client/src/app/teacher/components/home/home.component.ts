import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Course } from 'src/app/global/models/course';
import { Teacher } from 'src/app/global/models/teacher';
import { CourseService } from 'src/app/organization/services/course.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {

  teacher: Teacher;
  //courses : Course[];
  courses =[{_id:1},{_id:2},{_id:3},{_id:4},{_id:5},{_id:6},{_id:7}];

  constructor(private cs: CourseService, private router: Router) { }

  ngOnInit(): void {
/*
    this.cs.getCourses(this.teacher._id).subscribe(courses=>{
      courses.filter(c=>{
        let bool = false;
        c.teachers.forEach(teach => {
          if(teach._id == this.teacher._id) {
            bool = true;
            return;
          }
        });
        return bool;
      });
      this.courses = courses;
    });
*/
  }
  go(id :string) {
    this.router.navigate(['teacher/course/'+id]);
  }
}
