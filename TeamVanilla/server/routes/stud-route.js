const express = require('express');
const bodyParser = require('body-parser');

var Student = require('../models/student');
const Course = require('../models/course');
var cors = require('../cors');

const stdRouter = express.Router();
stdRouter.use(bodyParser.json());

stdRouter.route('/')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Student.find(req.query).populate('posts')
    .then(students=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(students);
    },err=>next(err)).catch(err=>next(err));
})
.post((req,res,next)=>{
    Student.create(req.body)
    .then(student=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(student);
    },err=>next(err)).catch(err=>next(err));
})
.put((req,res,next)=>{
    Student.findByIdAndUpdate(req.body._id, {$set:req.body},{new:true})
    .then(student=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(student);
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{
    Student.findByIdAndDelete(req.body._id)
    .then(resp=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(resp);
    },err=>next(err)).catch(err=>next(err));
});

stdRouter.route('/course/:id')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.post((req,res,next)=>{
    Course.findById(req.params.id).then(course=>{
        course.students.push(req.body._id);
        course.save().then(c=>{
            c.populate('teachers').populate('students').then(cou=>{
                res.statusCode=200;
                res.setHeader('Content-Type', 'application/json');
                res.json(cou);
            })
        });
    },err=>next(err)).catch(err=>next(err));
});
stdRouter.route('/login')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.post((req,res,next)=>{
    Student.findOne({email: req.body.email}).then(std=>{
        if(!std) {
            res.send("-1");
        }
        else if(std.password == req.body.password) {
            res.statusCode=200;
            res.setHeader('Content-Type', 'application/json');
            res.json(std);
        }
    }, err=>next(err)).catch(err=>next(err));
})

module.exports = stdRouter;