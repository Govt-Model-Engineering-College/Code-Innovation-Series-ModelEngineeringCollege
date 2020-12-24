const express = require("express");
const mongoose = require("mongoose");
const dotenv = require("dotenv");
const cors = require("cors");

//Import Routes
const postRoute = require("./routes/posts");
const authRoute = require("./routes/auth");
const doctorAuthRoute = require("./routes/doctorAuth");

//dotenv
dotenv.config();

//Create Express App
const app = express();

//Connect to MongoDB
mongoose.connect(
  process.env.DB_CONNECT,
  { useNewUrlParser: true, useUnifiedTopology: true },
  () => console.log("Connected to mongodb server")
);

//Middlewares
app.use(express.json());
app.use(cors());
app.use("/posts", postRoute);
app.use("/api/user", authRoute);
app.use("/api/doctor", doctorAuthRoute);

//Routes
app.get("/", (req, res) => {
  res.send("We are at home");
});

//Listen
const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`Listening to http://localhost:${port}`);
});
