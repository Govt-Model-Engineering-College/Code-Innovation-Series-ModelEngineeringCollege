import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Request } from 'src/app/global/models/request';
import { Organization } from 'src/app/organization/models/organization';

@Component({
  selector: 'app-verify',
  templateUrl: './verify.component.html',
  styleUrls: ['./verify.component.scss']
})
export class VerifyComponent implements OnInit {

  requests :Request[];
  organization :Organization;

  constructor(private router: Router) { }

  ngOnInit(): void {
    this.requests = [
      {
        role: 'teacher',
        user: {
        _id: '5671527657',
        name: "harry",
        email: 'haha',
        organisation: 'blah',
        dp: 'hihi',
        isVerified:false,
        subjects:[]
        }
      },
      {
        role: 'student',
        user: {
          name: 'dumble',
          email: 'hdihdoi',
          posts: []
        }
      },
      {
        role: 'teacher',
        user: {
        _id: '32327657',
        name: "henry",
        email: 'haha',
        organisation: 'blah',
        dp: 'hihi',
        isVerified:false,
        subjects:[]
        }
      },
      {
        role: 'teacher',
        user: {
        _id: '4547657',
        name: "perrty",
        email: 'haha',
        organisation: 'blah',
        dp: 'hihi',
        isVerified:false,
        subjects:[]
        }
      },
      {
        role: 'student',
        user: {
          name: 'cabmee',
          email: 'hdihdoi',
          posts: []
        }
      },
      {
        role: 'student',
        user: {
          name: 'dahiu',
          email: 'hdihdoi',
          posts: []
        }
      }
    ]
  }

  accept(index :number) {

    this.requests[index].user.isVerified=true;

    if(this.requests[index].role=='teacher') {
      this.organization.teachers.push(this.requests[index].user);
      //put request to apply changes to organization document
    } else {
      for(let i=0; i<this.organization.classes.length; i++) {
        if(this.organization.classes[i].name==this.requests[index].user.class) {
          this.organization.classes[i].students.push(this.requests[index].user);
          //put req
          break;
        }
      }
    }

    this.requests = this.requests.filter(el=>{
      return el != this.requests[index];
    })
  }
  go(id :string) {
    this.router.navigate(['organization/course/'+id]);
  }

  openDialog() {

  }

  goVerify() {
    this.router.navigate(['organization/verify']);
  }
  goHome() {
    this.router.navigate(['organization/home']);
  }

  reject(index: number) {

  }
}
