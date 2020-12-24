import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { baseURL } from '../../global/shared/url';
import { ProcessHttp } from '../../global/shared/processhttp';
import { catchError } from 'rxjs/operators';
import { Course } from '../../global/models/course';
import { Teacher } from 'src/app/global/models/teacher';
import { Student } from 'src/app/global/models/student';

@Injectable({
  providedIn: 'root'
})
export class CourseService {

  constructor(private http: HttpClient, private processHttp: ProcessHttp) { }

  addTeacher(cid :string, teacher: Teacher) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post<Course>(baseURL + 'organization/course/' + cid, teacher, httpOptions).pipe(catchError(this.processHttp.handleError));
  }

  addStudent(cid: string, student: Student) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post<Course>(baseURL + 'student/course/' + cid, student, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  getCourse(cid :string) {
    return this.http.get<Course>(baseURL + 'organization/course?_id=' + cid).pipe(catchError(this.processHttp.handleError));
  }
  getCourses(uid) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      "body": {id:uid}
    };
    return this.http.get<Course[]>(baseURL + 'organization/course', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  updateCourse(course: Course) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.put<Course>(baseURL + 'organization/course', course, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  createCourse(course: Course) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
    };
    return this.http.post<Course>(baseURL + 'organization/course', course, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  deleteCourse(course: Course) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      "body": course
    };
    return this.http.delete<Course>(baseURL + 'organization/course', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
}
