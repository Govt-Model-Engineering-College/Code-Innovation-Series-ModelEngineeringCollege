import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { TeacherService } from '../../services/teacher.service';
import { Credentials } from '../../../global/shared/auth';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent implements OnInit {

  bool :boolean;
  creds: Credentials
  userForm: FormGroup;

  name :FormControl;
  password :FormControl;
  email :FormControl;

  constructor(private fb: FormBuilder, private router: Router, private ts: TeacherService) { }

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
    this.ts.updateTeacher(this.userForm.value).subscribe(tch=>{
      this.bool=false;
    })
  }

}
