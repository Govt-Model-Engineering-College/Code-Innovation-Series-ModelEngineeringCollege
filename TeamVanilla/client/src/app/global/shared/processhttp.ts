import { Injectable } from '@angular/core';
import { throwError } from 'rxjs';
import { HttpErrorResponse } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ProcessHttp {

  constructor() { }
  public handleError(error:HttpErrorResponse | any) {
    let errMsg: string;
  
    if(error.error instanceof ErrorEvent) {
      errMsg=error.error.message;
    }
    else {
      errMsg=`${error.status} -${error.statusText || ''} ${error.error}`;
    }                  //backquotes (on top of tab key)
  return throwError(errMsg);
  }
}