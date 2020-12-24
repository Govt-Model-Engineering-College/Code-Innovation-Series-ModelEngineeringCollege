const Joi = require("joi");

const patientRegisterValidation = (data) => {
  const schema = Joi.object({
    name: Joi.string().min(6).required(),
    email: Joi.string().min(6).required().email(),
    password: Joi.string().min(6).required(),
  });
  return schema.validate(data);
};

const patientLoginValidation = (data) => {
  const schema = Joi.object({
    email: Joi.string().min(6).required().email(),
    password: Joi.string().min(6).required(),
  });
  return schema.validate(data);
};

const doctorRegisterValidation = (data) => {
  const schema = Joi.object({
    name: Joi.string().min(6).required(),
    email: Joi.string().min(6).required().email(),
    password: Joi.string().min(6).required(),
    specialization: Joi.string().min(6).required(),
    address: Joi.string().min(6).required(),
  });
  return schema.validate(data);
};

const doctorLoginValidation = (data) => {
  const schema = Joi.object({
    email: Joi.string().min(6).required().email(),
    password: Joi.string().min(6).required(),
  });
  return schema.validate(data);
};

module.exports.patientRegisterValidation = patientRegisterValidation;
module.exports.patientLoginValidation = patientLoginValidation;
module.exports.doctorRegisterValidation = doctorRegisterValidation;
module.exports.doctorLoginValidation = doctorLoginValidation;
