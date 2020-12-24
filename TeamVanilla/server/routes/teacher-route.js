const express = require('express');
const bodyParser = require('body-parser');

var Teacher = require('../models/teacher');
var cors = require('../cors');

const teachRouter = express.Router();
teachRouter.use(bodyParser.json());

teachRouter.route('/')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Teacher.find(req.query).populate('posts')
    .then(teachers=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(teachers);
    },err=>next(err)).catch(err=>next(err));
})
.post((req,res,next)=>{
    Teacher.create(req.body)
    .then(teacher=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(teacher);
    },err=>next(err)).catch(err=>next(err));
})
.put((req,res,next)=>{
    Teacher.findByIdAndUpdate(req.body._id, {$set:req.body},{new:true})
    .then(teacher=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(teacher);
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{
    Teacher.findByIdAndDelete(req.body._id)
    .then(resp=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(resp);
    },err=>next(err)).catch(err=>next(err));
});

teachRouter.route('/login')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.post((req,res,next)=>{
    Teacher.findOne({email: req.body.email}).then(teach=>{
        if(!teach) {
            res.send("-1");
        }
        else if(teach.password == req.body.password) {
            res.statusCode=200;
            res.setHeader('Content-Type', 'application/json');
            res.json(teach);
        }
    }, err=>next(err)).catch(err=>next(err));
});

module.exports = teachRouter;