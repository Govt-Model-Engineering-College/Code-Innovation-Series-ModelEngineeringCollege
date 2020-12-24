import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-post',
  templateUrl: './post.component.html',
  styleUrls: ['./post.component.scss']
})
export class PostComponent implements OnInit {

  comments = [
    1,2,3,4,5,6,7,8
  ]

  constructor() { }

  ngOnInit(): void {
  }

}
