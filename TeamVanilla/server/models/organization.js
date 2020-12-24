var mongoose = require('mongoose');
const Class = require('./class');
const Course = require('./course');
const Teacher = require('./teacher');
const Schema = mongoose.Schema;

const organizationSchema = new Schema({
    name: {
        type: String,
    },
    image: {
        type: String
    },
    email: {
        type: String,
    },
    password: {
        type: String
    },
    classes: [
        {
        type: Schema.Types.ObjectId,
        ref: Class
        }
    ],
    requests : [
        {
        type: String
        }
    ],
    teachers: [
        {
        type: Schema.Types.ObjectId,
        ref: Teacher
        }
    ], 
    courses: [
        {
            type: Schema.Types.ObjectId,
            ref: Course
        }
    ]
},{
    timestamps: true
});

var Organization = mongoose.model('Organization', organizationSchema);
module.exports = Organization;