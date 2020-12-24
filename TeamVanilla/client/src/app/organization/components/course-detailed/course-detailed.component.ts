import { Component, Input, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Teacher } from 'src/app/global/models/teacher';
import { Course } from '../../../global/models/course';

@Component({
  selector: 'app-course-detailed',
  templateUrl: './course-detailed.component.html',
  styleUrls: ['./course-detailed.component.scss']
})
export class CourseDetailedComponent implements OnInit {
  course: Course;
  teachers: Teacher[];
  teacher: Teacher;

  id: string;

  main_cards = [1,2,3,4,5,6,7,8,9,10];
  forum_cards = [1,2,3,4,5,6,7];

  constructor(private ar: ActivatedRoute, private router: Router) {
    console.log(this.ar.snapshot.params['id']);
    this.id = this.ar.snapshot.params['id'];
  }

  ngOnInit(): void {
    //fetch corresponding course via id
    //fetch teachers
  }
  addTeacher(tid: string) {
    this.teachers.forEach(teacher => {
      if(teacher._id==tid) {
        this.course.teachers.push(teacher);
      }
    });
    console.log(this.course);
  }
  gotoPost(id) {
    this.router.navigate(['organization/post/'+id])
  }
}
