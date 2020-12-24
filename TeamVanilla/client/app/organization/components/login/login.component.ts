import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { User } from '../../../global/models/user';
import { OrgService } from '../../services/org.service';
import { Credentials } from '../../../global/shared/auth';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})

export class LoginComponent implements OnInit {

  user: User = { email:"", password:""};
  bool;

  constructor(private router: Router, private os: OrgService, private cred: Credentials) { }

  ngOnInit(): void {
  }

  onSubmit() {
    this.os.loginOrganiztion(this.user).subscribe(user=>{
      if(user!="-1")
      this.router.navigate(['organization/home']);
      else {
        alert("Invalid user... please signup");
      }
    })
  }

  goSignin() {
    this.cred.email = this.user.email;
    this.os.getOrganization(this.user.email).subscribe(org=>{
      this.cred._id = org._id;
      this.cred.name = org.name;
      this.router.navigate(['organization/register']);
    });
  }
}
