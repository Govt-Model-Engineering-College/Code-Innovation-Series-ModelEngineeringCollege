import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { GlobalComponent } from './global/components/global.component';

const routes: Routes = [ { path:'home', component: GlobalComponent }, { path:'', redirectTo: '/home', pathMatch: 'full' }, { path: 'student', loadChildren: () => import('./student/student.module').then(m => m.StudentModule) }, { path: 'organization', loadChildren: () => import('./organization/organization.module').then(m => m.OrganizationModule) }, { path: 'teacher', loadChildren: () => import('./teacher/teacher.module').then(m => m.TeacherModule) }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
