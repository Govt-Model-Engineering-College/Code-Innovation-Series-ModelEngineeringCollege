const express = require("express");
const verify = require("./verifyToken");
const router = express.Router();

router.get("/", verify, (req, res) => {
  res.send("We are on Posts");
});

module.exports = router;
