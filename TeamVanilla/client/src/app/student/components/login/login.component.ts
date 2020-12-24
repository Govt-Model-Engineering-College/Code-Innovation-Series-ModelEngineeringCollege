import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../../global/models/user';
import { StudentService } from '../../services/student.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  user: User = { email:"", password:""};
  bool;

  constructor(private router: Router, private ss: StudentService) { }

  ngOnInit(): void {

  }

  onSubmit() {
    this.ss.loginStudent(this.user).subscribe(user=>{
      if(user!="-1")
      this.router.navigate(['student/home']);
      else {
        alert("Invalid user... please signup");
      }
    });
  }

  goSignin() {
    this.router.navigate(['student/signup']);
  }

}
