import { Component, OnInit } from '@angular/core';
import { CourseService } from '../../../organization/services/course.service';
import { Student } from '../../../global/models/student';
import { Course } from 'src/app/global/models/course';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})

export class HomeComponent implements OnInit {

  student: Student;
  //courses: Course[];
  courses =[{_id:1},{_id:2},{_id:3},{_id:4},{_id:5},{_id:6},{_id:7}];

  constructor(private cs: CourseService, private router: Router) { }

  ngOnInit(): void {
/*
    this.cs.getCourses(this.student._id).subscribe(courses=>{
      courses.filter(c=>{
        let bool = false;
        c.students.forEach(stud => {
          if(stud._id == this.student._id) {
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
    this.router.navigate(['student/course/'+id]);
  }
}
