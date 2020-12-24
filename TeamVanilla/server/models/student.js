var mongoose = require('mongoose');
const Post = require('./post');
const Schema = mongoose.Schema;

const StudentSchema = new Schema({
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
        type: Schema.Types.ObjectId,
        }
    ],
    class: [
        {
        type: String
        }
    ],
    image: {
        type: String
    },
    isVerified: {
        type: Boolean,
    }
},{
    timestamps: true
});

var Student = mongoose.model('Student', StudentSchema);
module.exports = Student;