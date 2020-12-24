const express = require('express');
const bodyParser = require('body-parser');

var Post = require('../models/post');
var Course = require('../models/course');

const postRouter = express.Router();
postRouter.use(bodyParser.json());

postRouter.route('/:id')

.get((req,res,next)=>{
    Post.find(req.query)
    .then(posts=>{
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(posts);
    },err=>next(err))
    .catch(err =>next(err));
})
.post((req,res,next)=>{
    Post.create(req.body)
    .then(post=>{
        Course.findByIdAndUpdate({_id:req.params.id},{$push: {posts: post._id}}).then(course=>{

        console.log("Course updated", course);

        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(post);
        },err=>next(err)).catch(err=>next(err));

        console.log("Post created", post);
    },err=>next(err)).catch(err=>next(err));
})
.put((req,res,next)=>{
    Post.findByIdAndUpdate(req.body._id,{$set:req.body},{ new:true })
    .then(post=>{
        console.log('Post updated',post);
        res.statusCode=200;
        res.setHeader('Content-Type','application/json');
        res.json(post);
    },err=>next(err)).catch(err=>next(err));
})
.delete((req,res,next)=>{    
    //delete student posts
    Course.findByIdAndUpdate({id:req.params.id},{posts: posts.filter(post=>{return post!=req.body._id})})
    .then(course=>{
        console.log("Course Updated");
        Post.findByIdAndDelete(req.body._id)
        .then(resp=>{
            console.log("Post deleted");
            res.statusCode=200;
            res.setHeader('Content-Type','application/json');
            res.json(resp);
        },err=>next(err)).catch(err=>next(err));
    })
});

module.exports = postRouter;