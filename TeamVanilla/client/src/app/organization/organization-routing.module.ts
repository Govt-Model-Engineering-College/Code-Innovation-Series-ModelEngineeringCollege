import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './components/login/login.component';
import { HomeComponent } from './components/home/home.component';
import { RegisterComponent } from './components/register/register.component';
import { CourseDetailedComponent } from './components/course-detailed/course-detailed.component';
import { CourseComponent } from './components/course/course.component';
import { PostComponent } from '../global/components/post/post.component';
import { VerifyComponent } from './components/verify/verify.component';


const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'login', component: LoginComponent },
  { path: 'course/:id', component: CourseDetailedComponent },
  { path: 'course', component: CourseComponent },
  { path: 'post/:id', component: PostComponent },
  { path: 'verify', component: VerifyComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class OrganizationRoutingModule { }
