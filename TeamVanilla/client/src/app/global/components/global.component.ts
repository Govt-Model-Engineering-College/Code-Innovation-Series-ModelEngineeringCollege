import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-global',
  templateUrl: './global.component.html',
  styleUrls: ['./global.component.scss']
})
export class GlobalComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  goHome() {
    document.getElementById("home").scrollIntoView();
  }
  goSignup() {
    document.getElementById("signup").scrollIntoView();
  }
  goLogin() {
    document.getElementById("login").scrollIntoView();
  }
  goToStudentSignup() {
    this.router.navigate(['student/signup']);
  }
  goToStudentLogin() {
    this.router.navigate(['student/login']);
  }
  goToTeacherSignup() {
    this.router.navigate(['teacher/signup']);
  }
  goToTeacherLogin() {
    this.router.navigate(['teacher/login']);
  }
  goToOrganizationSignup() {
    this.router.navigate(['organization/register']);
  }
  goToOrganizationLogin() {
    this.router.navigate(['organization/login']);
  }
}
