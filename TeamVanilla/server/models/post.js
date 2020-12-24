var mongoose = require('mongoose');
const Schema = mongoose.Schema;

const commentSchema = new Schema({
    comment: {
        type: String,
        required: true
    },
    author: {
        type: Schema.Types.ObjectId
    }
});

const PostSchema = new Schema({
    title: {
        type: String,
    },
    content: {
        type: String,
    },
    type: {
        type: String,
    },
    author: {
        type: Schema.Types.ObjectId
    },
    comments: [
        {
        type: commentSchema
        }
    ],
    file: {
        type: String,
    },
    date: {
        type: String
    }
},{
    timestamps: true
});

var Post = mongoose.model('Post', PostSchema);
module.exports = Post;