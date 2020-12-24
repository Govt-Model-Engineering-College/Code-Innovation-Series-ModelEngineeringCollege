import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ProcessHttp } from '../../global/shared/processhttp';
import { catchError } from 'rxjs/operators';
import { baseURL } from '../../global/shared/url';
import { Teacher } from '../../global/models/teacher';

@Injectable({
  providedIn: 'root'
})
export class TeacherService {

  constructor(private http: HttpClient, private processHttp: ProcessHttp) { }

  getTeacher(email: string) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.get<Teacher>( baseURL + 'teacher?email=' + email, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  createTeacher(teacher: Teacher) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post<Teacher>( baseURL + 'teacher', teacher, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  updateTeacher(teacher: Teacher) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      body: teacher
    };
    return this.http.put<Teacher>( baseURL + 'teacher', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  deleteTeacher(teacher: Teacher) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      "body": teacher
    };
    return this.http.delete( baseURL + 'teacher', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  loginTeacher(tch) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post( baseURL + 'teacher/login', tch, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
}
