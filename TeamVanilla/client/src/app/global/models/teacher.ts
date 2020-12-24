import { Post } from "./post";

export interface Teacher {
    _id: string,
    name: string,
    email: string,
    posts?: Post[],
    organisation: string[],
    subjects: string[],
    courses: string[],
    dp: string,
    isVerified: boolean
};