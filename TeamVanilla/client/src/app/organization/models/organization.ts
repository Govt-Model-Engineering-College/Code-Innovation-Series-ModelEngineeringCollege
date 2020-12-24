import { Course } from "src/app/global/models/course";
import { Class } from "../../global/models/class";
import { Teacher } from "../../global/models/teacher";

export interface Organization {
    _id?: string,
    name: string,
    email: string,
    classes: Class[],
    teachers: Teacher[],
    request: Request[],
    courses: Course[]
}