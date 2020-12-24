import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ProcessHttp } from '../../global/shared/processhttp';
import { catchError } from 'rxjs/operators';
import { baseURL } from '../../global/shared/url';
import { Student } from '../../global/models/student';

@Injectable({
  providedIn: 'root'
})
export class StudentService {

  constructor(private http: HttpClient, private processHttp: ProcessHttp) { }

  getStudent(email: string) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.get<Student>( baseURL + 'student?email=' + email, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  createStudent(student: Student) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    };
    return this.http.post<Student>( baseURL + 'student', student, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  updateStudent(student: Student) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      body: student
    };
    return this.http.put<Student>( baseURL + 'student', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  deleteStudent(student: Student) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    };
    return this.http.delete( baseURL + 'student', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  loginStudent(std) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post( baseURL + 'student/login', std, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
}
