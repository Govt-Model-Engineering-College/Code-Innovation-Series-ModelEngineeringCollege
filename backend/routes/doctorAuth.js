const router = require("express").Router();
const Doctor = require("../models/Doctors");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const {
  doctorRegisterValidation,
  doctorLoginValidation,
} = require("../validation");

router.post("/register", async (req, res) => {
  const { error } = doctorRegisterValidation(req.body);
  if (error) return res.status(400).send(error.details[0].message);

  const emailExists = await Doctor.findOne({ email: req.body.email });
  if (emailExists) return res.status(400).send("Email already exists");

  //Hash passwords
  const salt = await bcrypt.genSalt(10);
  const hashPassword = await bcrypt.hash(req.body.password, salt);

  if (req.body.verificationCode !== process.env.DOCTOR_VERIFICATION)
    return res.status(400).send("Invalid Verification Code");

  const doctor = new Doctor({
    name: req.body.name,
    email: req.body.email,
    password: hashPassword,
    specialization: req.body.specialization,
    address: req.body.address,
    verified: true,
  });
  try {
    await doctor.save();
    res.send({ doctor: doctor._id });
  } catch (err) {
    res.status(400).send(`ERROR: ${err}`);
  }
});

router.post("/login", async (req, res) => {
  const { error } = doctorLoginValidation(req.body);
  if (error) return res.status(400).send(error.details[0].message);

  const doctor = await Doctor.findOne({ email: req.body.email });
  if (!doctor) return res.status(400).send("Email or Password is wrong");

  const validPassword = await bcrypt.compare(
    req.body.password,
    doctor.password
  );
  if (!validPassword) return res.status(400).send("Email or Password is wrong");

  //Create and assign a token
  const token = jwt.sign({ _id: doctor._id }, process.env.TOKEN_SECRET);
  res.header("auth_token", token).send(token);
});

module.exports = router;
