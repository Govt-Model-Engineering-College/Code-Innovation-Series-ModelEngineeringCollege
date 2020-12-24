export interface Post {
    _id: string,
    title?: string,
    content: string,
    file?: File,
    type: string,
    authorid: string,
    authorname: string,
    comments: Post[]
};