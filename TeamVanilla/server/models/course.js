var mongoose = require('mongoose');
const Class = require('./class');
const Posts = require('./post');
const Student = require('./student');
const Teacher = require('./teacher');
const Schema = mongoose.Schema;

const courseSchema = new Schema({
    name: {
        type: String,
    },
    organization: {
        type: Schema.Types.ObjectId
    },
    posts: [
        {
        type: Schema.Types.ObjectId,
        ref: Posts
        }
    ],
    students: [
        {
        type: Schema.Types.ObjectId,
        ref: Student
        }
    ],
    teachers: [
        {
        type: Schema.Types.ObjectId,
        ref: Teacher
        }
    ],
    classes : [
        {
        type: Schema.Types.ObjectId,
        ref: Class
        }
    ]
},{
    timestamps: true
});

var Course = mongoose.model('Course', courseSchema);
module.exports = Course;