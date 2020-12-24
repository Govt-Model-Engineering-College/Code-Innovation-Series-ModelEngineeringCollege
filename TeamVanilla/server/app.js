var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var mongoose = require('mongoose');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var postRouter = require('./routes/post-route');
var studentRouter = require('./routes/stud-route');
var orgRouter = require('./routes/org-route');
const teachRouter = require('./routes/teacher-route');

const url = 'mongodb+srv://nik:y64PZGeDCZbgkRpC@cluster1.ve9ee.mongodb.net/vanilla?retryWrites=true&w=majority';
const connect = mongoose.connect(url, { useNewUrlParser: true, useUnifiedTopology: true });

connect.then((db)=> {
  console.log('Connected correctly to server');
}, err=> console.log(err));

var app = express();

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  next();
});


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

app.use('/api/organization', orgRouter);
app.use('/api/student', studentRouter);
app.use('/api/course',postRouter);
app.use('/api/teacher', teachRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
