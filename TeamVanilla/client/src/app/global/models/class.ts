import { Student } from "./student";
import { Teacher } from './teacher';

export interface Class {
    _id: string,
    name: string,
    timetable: string,
    students: Student[],
    attendance: string[]
};