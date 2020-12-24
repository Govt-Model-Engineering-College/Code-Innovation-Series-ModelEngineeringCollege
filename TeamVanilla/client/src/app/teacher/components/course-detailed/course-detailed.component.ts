import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-course-detailed',
  templateUrl: './course-detailed.component.html',
  styleUrls: ['./course-detailed.component.scss']
})
export class CourseDetailedComponent implements OnInit {

  id;
  main_cards = [1,2,3,4,5,6,7,8,9,10];
  forum_cards = [1,2,3,4,5,6,7];

  constructor(private ar: ActivatedRoute, private router: Router) {
    console.log(this.ar.snapshot.params['id']);
    this.id = this.ar.snapshot.params['id'];
   }

  ngOnInit(): void {
  }

  gotoPost(id) {
    this.router.navigate(['teacher/post/'+id])
  }

}
