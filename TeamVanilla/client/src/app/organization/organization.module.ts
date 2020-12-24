import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule} from '@angular/material/select';
import { OrganizationRoutingModule } from './organization-routing.module';
import {MatProgressSpinnerModule} from '@angular/material/progress-spinner';
import { MatButtonModule } from '@angular/material/button';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { MatCardModule } from '@angular/material/card';
import {MatDialogModule} from '@angular/material/dialog';
import { MatToolbarModule } from '@angular/material/toolbar';

import { OrganizationComponent } from './organization.component';
import { RegisterComponent } from './components/register/register.component';
import { VerifyComponent } from './components/verify/verify.component';
import { LoginComponent } from './components/login/login.component';
import { HomeComponent } from './components/home/home.component';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { CourseDetailedComponent } from './components/course-detailed/course-detailed.component';
import { CourseComponent } from './components/course/course.component';
import { MatIconModule } from '@angular/material/icon';
import { MatTabsModule } from '@angular/material/tabs';
import { Credentials } from '../global/shared/auth';



@NgModule({
  declarations: [OrganizationComponent, RegisterComponent, VerifyComponent, LoginComponent, HomeComponent, DashboardComponent, CourseDetailedComponent, CourseComponent],
  imports: [
    CommonModule,
    OrganizationRoutingModule,
    MatFormFieldModule,
    MatProgressSpinnerModule,
    MatButtonModule,
    MatInputModule,
    MatSelectModule,
    FormsModule,
    ReactiveFormsModule,
    MatCardModule,
    MatDialogModule,
    MatToolbarModule,
    MatIconModule,
    MatTabsModule
  ],
  entryComponents: [CourseComponent],
  providers: [Credentials]
})
export class OrganizationModule { }
