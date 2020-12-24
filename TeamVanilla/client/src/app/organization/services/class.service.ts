import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { baseURL } from '../../global/shared/url';
import { ProcessHttp } from '../../global/shared/processhttp';
import { catchError } from 'rxjs/operators';
import { Class } from '../../global/models/class';


@Injectable({
  providedIn: 'root'
})
export class ClassService {

  constructor(private http: HttpClient, private processHttp: ProcessHttp) {}

  deleteClass(c: Class) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      body: c
    };
    return this.http.delete<Class>(baseURL + 'organization/class', httpOptions).pipe(catchError(this.processHttp.handleError));
  }

  createClass(c: Class) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      body: c
    };
    return this.http.post(baseURL + 'organization/class', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
}