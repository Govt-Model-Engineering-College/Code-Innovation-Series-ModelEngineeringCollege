import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../../global/models/user';
import { TeacherService } from '../../services/teacher.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  user: User = { email:"", password:""};
  bool;

  constructor(private router: Router, private ts: TeacherService) { }

  ngOnInit(): void {

  }

  onSubmit() {
    this.ts.loginTeacher(this.user).subscribe(user=>{
      if(user!="-1")
      this.router.navigate(['teacher/home']);
      else {
        alert("Invalid user... please signup");
      }
    })
  }

  goSignin() {
    this.router.navigate(['teacher/signup']);
  }

}
