import { Class } from "./class";
import { Post } from "./post";
import { Student } from "./student";
import { Teacher } from "./teacher";

export interface Course {
    _id: string,
    name: string,
    posts: Post[],
    students: Student[],
    teachers: Teacher[],
    classes: Class[],
    organization: String
};
