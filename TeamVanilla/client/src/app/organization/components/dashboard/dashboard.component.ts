import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { Credentials } from 'src/app/global/shared/auth';
import { OrgService } from 'src/app/organization/services/org.service';

@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']
})
export class DashboardComponent implements OnInit {

  bool :boolean;
  creds: Credentials;
  userForm: FormGroup;

  name :FormControl;
  password :FormControl;
  email :FormControl;

  constructor(private fb: FormBuilder, private router: Router, private os: OrgService) { }

  ngOnInit(): void {
    this.createFormControls();
    this.createForm();
  }
  createFormControls() {
    this.password = new FormControl( this.creds.name,[Validators.required,Validators.minLength(6)]);
    this.email = new FormControl(this.creds.email,[Validators.required,Validators.email]);
    this.name = new FormControl(this.creds.image,[Validators.required]);
  }
  createForm() {
    this.userForm=this.fb.group({
      password: this.password,
      name: this.name,
      email: this.email
    });
  }
  onSubmit() {
    this.bool=true;
    this.os.updateOrganization(this.userForm.value).subscribe(org=>{
      this.bool=false;
    })
  }

}
