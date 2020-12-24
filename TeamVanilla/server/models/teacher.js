var mongoose = require('mongoose');
const Post = require('./post');
const Schema = mongoose.Schema;

const TeacherSchema = new Schema({
    name: {
        type: String,
    },
    email: {
        type: String,
    },
    password: {
        type: String,
    },
    posts: [
        {
        type: Schema.Types.ObjectId,
        ref: Post
        }
    ],
    organization: [
        {
        type: Schema.Types.ObjectId
        }
    ],
    subjects: [
        {
        type: Schema.Types.ObjectId,
        }
    ],
    courses: [
        {
        type: Schema.Types.ObjectId
        }
    ],
    image: {
        type: String
    },
    isVerified: {
        type: Boolean
    }
},{
    timestamps: true
});

var Teacher = mongoose.model('Teacher', TeacherSchema);
module.exports = Teacher;