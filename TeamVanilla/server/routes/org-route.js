const express = require('express');
const bodyParser = require('body-parser');

var Organization = require('../models/organization');
var Class = require('../models/class');
var Course = require('../models/course');
var cors = require('../cors');

const orgRouter = express.Router();
orgRouter.use(bodyParser.json());

orgRouter.route('/')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Organization.find(req.query).populate('classes').populate('teachers')
    .then(orgs=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(orgs);
    },err=>next(err)).catch(err=>next(err));
})
.post((req,res,next)=>{
    console.log(req.body);
    Organization.create(req.body)
    .then(org=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(org);
    },err=>next(err)).catch(err=>next(err));
})
.put((req,res,next)=>{
    Organization.findByIdAndUpdate(req.body._id, {$set:req.body},{new:true})
    .then(org=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(org);
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{
    res.statusCode=403;
    res.end('Delete org not supported');
});

orgRouter.route('/login')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.post((req,res,next)=>{
    Organization.findOne({email: req.body.email}).then(org=>{
        if(!org) {
            res.send("-1");
        }
        else if(org.password == req.body.password) {
            res.statusCode=200;
            res.setHeader('Content-Type', 'application/json');
            res.json(org);
        }
    }, err=>next(err)).catch(err=>next(err));
})

orgRouter.route('/class')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Class.find(req.query).populate('students')
    .then(classes=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(classes);
    },err=>next(err)).catch(err=>next(err));
})
.put((req, res, next)=>{
    Class.findByIdAndUpdate(req.body._id, {$set:req.body},{new:true})
    .then(c=>{
        res.statusCode=200;
        res.setHeader('Content-Type', 'application/json');
        res.json(c);
    },err=>next(err)).catch(err=>next(err));
})
.post((req,res,next)=>{
    Class.create(req.body)
    .then(c=>{
        Organization.findByIdAndUpdate(req.body.organization,{$push: {classes: c._id}}).then(result=>{
            result.save();
            console.log(result);
            res.statusCode=200;
            res.setHeader('Content-Type','application/json');
            res.json(c);
        },err=>next(err)).catch(err=>next(err));
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{
    Class.findByIdAndDelete(req.body._id)
    .then(resp=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(resp);
    },err=>next(err)).catch(err=>next(err));
});

orgRouter.route('/course')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Course.find(req.query).populate('teachers').populate('students').populate('posts').populate('classes')
    .then(courses=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(courses);
    },err=>next(err)).catch(err=>next(err));
})
.put((req, res, next)=>{
    Course.findByIdAndUpdate(req.body._id, {$set:req.body},{new:true})
    .then(course=>{
        course.populate('students').populate('teachers').populate('posts').then(c=>{
            res.statusCode=200;
            res.setHeader('Content-Type', 'application/json');
            res.json(c);
        })
    },err=>next(err)).catch(err=>next(err));
})
.post((req,res,next)=>{
    Course.create({name: req.body.name, organization: req.body.organization})
    .then(course=>{
        Organization.findById(req.body.organization).then(org=>{
            org.courses.push(course._id);
            org.save().then(result=>{
                
                res.statusCode=200;
                res.setHeader('Content-Type', 'application/json');
                res.json(course);
                
            },err=>next(err)).catch(err=>next(err));
        },err=>next(err)).catch(err=>next(err));
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{
    Course.findByIdAndDelete(req.body._id)
    .then(resp=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(resp);
    },err=>next(err)).catch(err=>next(err));
});

orgRouter.route('/course/:id')
.options(cors.cors,(req,res)=>res.sendStatus(200))
.get((req,res,next)=>{
    Course.findById(req.params.id).populate('students').populate('posts').populate('classes').populate('teachers')
    .then(course=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(course.teachers);
    },err=>next(err)).catch(err=>next(err));
})

.post((req,res,next)=>{
    Course.findById(req.params.id).then(course=>{
        course.teachers.push(req.body._id);
        course.save().then(c=>{
            res.statusCode=200;
            res.setHeader('Content-Type','application/json');
            res.json(c);
        },err=>next(err));
    },err=>next(err)).catch(err=>next(err));
})

module.exports = orgRouter;