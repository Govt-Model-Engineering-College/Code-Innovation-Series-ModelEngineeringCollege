var mongoose = require('mongoose');
const Course = require('./course');
const Student = require('./student');
const Schema = mongoose.Schema;

const classSchema = new Schema({
    organization: {
        type: Schema.Types.ObjectId,
    },
    name: {
        type: String,
    },
    timetable: {
        type: String
    },
    students: [
        {
        type: Schema.Types.ObjectId,
        ref: Student
        }
    ],
    attendance: [
        {
        type: String
        }
    ]
},{
    timestamps: true
});

var Class = mongoose.model('Class', classSchema);
module.exports = Class;