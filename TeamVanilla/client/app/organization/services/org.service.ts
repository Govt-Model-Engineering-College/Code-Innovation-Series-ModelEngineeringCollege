import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { baseURL } from '../../global/shared/url';
import { ProcessHttp } from '../../global/shared/processhttp';
import { catchError } from 'rxjs/operators';
import { Organization } from '../models/organization';

@Injectable({
  providedIn: 'root'
})
export class OrgService {

  constructor(private http: HttpClient, private processHttp: ProcessHttp) { }

  getOrganization(email :string) {
    return this.http.get<Organization>(baseURL + 'organization?email=' + email).pipe(catchError(this.processHttp.handleError));
  }
  updateOrganization(org :Organization) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      }),
      body: org
    };
    return this.http.put(baseURL + 'organization', httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  createOrganization(org) {
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    };
    return this.http.post<Organization>(baseURL + 'organization', org, httpOptions).pipe(catchError(this.processHttp.handleError));
  }
  loginOrganiztion(org) {
    console.log(org);
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type':'application/json'
      })
    };
    return this.http.post(baseURL + 'organization/login', org, httpOptions).pipe(catchError(this.processHttp.handleError));
  }

}
