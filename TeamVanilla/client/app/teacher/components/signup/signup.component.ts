import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { TeacherService } from '../../services/teacher.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.scss']
})
export class SignupComponent implements OnInit {

  bool :boolean;

  signupForm: FormGroup;

  name :FormControl;
  password :FormControl;
  confirmpassword :FormControl;
  email :FormControl;

  constructor(private fb: FormBuilder, private router: Router, private ts: TeacherService) { }

  ngOnInit(): void {
    this.createFormControls();
    this.createForm();
  }

  createFormControls() {
    this.password = new FormControl('',[Validators.required,Validators.minLength(6)]);
    this.confirmpassword = new FormControl('',[Validators.required],);
    this.email = new FormControl('',[Validators.required,Validators.email]);
    this.name = new FormControl('',[Validators.required]);
  }

  createForm() {
    this.signupForm=this.fb.group({
      password: this.password,
      confirmpassword: this.confirmpassword,
      name: this.name,
      email: this.email
    }, {validator: this.checkPassword});
  }

  checkPassword(group: FormGroup) {
    let pass = group.get('password').value;
    let confirmPass = group.get('confirmpassword').value;

    if(pass===confirmPass) {
      return null;
    }
    else {
      return {  'wrong' : true   };
    }
  }

  onSubmit() {
    /*
    const data = new FormData();
    data.append('name',this.signupForm.value.name);
    data.append('email',this.signupForm.value.email);
    data.append('password',this.signupForm.value.password);
    console.log(data.getAll);
    console.log(this.signupForm.value);
    setTimeout(()=>{}, 1000);
    */
    this.ts.createTeacher(this.signupForm.value).subscribe(tch=>{
      this.router.navigate(['teacher/home']);
    })
  }

  goLogin() {
    this.router.navigate(['teacher/login']);
  }

}
