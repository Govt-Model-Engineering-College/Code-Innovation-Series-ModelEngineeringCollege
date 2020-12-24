import { Post } from "./post";

export interface Student {
    _id: string,
    name: string,
    email: string,
    posts?: Post[],
    organisation: string[],
    class: string[],
    dp: string,
    isVerified: boolean
};