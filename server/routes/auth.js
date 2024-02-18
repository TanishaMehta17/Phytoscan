const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");
const auth = require("../middlewares/auth");
const nodemailer = require("nodemailer");
const otpGenerator = require("otp-generator");
const session = require('express-session');
const crypto = require('crypto');
const app = express();
// SIGN UP
app.use(session({
  secret: crypto.randomBytes(32).toString('hex'), // Change this to a secure secret
  resave: false,
  saveUninitialized: true,
}));
let otpMap = new Map();


const transporter = nodemailer.createTransport({
  service: "gmail",
  secure: false,
  host: process.env.SMTP_HOST,
  port: 3000,
  auth: {
    user: 'bansalmohit123654@gmail.com',
    pass: 'kuzo snfe aqdp vlkb',
  },
});
// Set up your email configuration
const OTP = otpGenerator.generate(4, { digits: true, alphabets: false, upperCase: false, specialChars: false ,lowerCaseAlphabets:false,upperCaseAlphabets:false});
authRouter.post("/register",async(req,res)=>{

  try {
    const { username, email ,number,password,confirmpas } = req.body;
     
    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res
        .status(400)
        .json({ msg: "User with same email already exists!" });
    }
    
    

    // Send OTP via email
    const mailOptions = {
      from: "bansalmohit123654@gmail.com",
      to: email,
      subject: "OTP Verification",
      text: `Your OTP for user ${username} is ${OTP}`,
    };

    await transporter.sendMail(mailOptions, function(error, info){
      if (error) {
        console.log(error);
      } else {
        console.log('Email sent: ' + info.response);
        otpMap.set(email, OTP);
      }
    });
    registrationInfo =  new User ({ 
      username,
      email,
      number,
      password,
      confirmpas,
    });
    const hashedPassword = await bcryptjs.hash(password, 8);

    registrationInfo.password=hashedPassword;
    registrationInfo = await registrationInfo.save();
    res.status(200).json({ msg: "OTP sent successfully" });
  } catch (e) {
    res.status(500).json({error:e.message});
  }
});



authRouter.post("/api/signup", async (req, res) => {
  try {
    
    const { otp1 } = req.body;
    
    if(otp1!=OTP){
       return res.status(400).json({msg:"OTP doest not Match"});
    }
   
    
    res.status(200).json({ msg: "User registered successfully" });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// Sign In Route
// Exercise
authRouter.post("/api/signin", async (req, res) => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
      return res
        .status(400)
        .json({ msg: "User with this email does not exist!" });
    }

    const isMatch = await bcryptjs.compare(password, user.password);
    if (!isMatch) {
      return res.status(400).json({ msg: "Incorrect password." });
    }

    const token = jwt.sign({ id: user._id }, "passwordKey");
    res.json({ token, ...user._doc });
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

authRouter.post("/tokenIsValid", async (req, res) => {
  try {
    const token = req.header("x-auth-token");
    if (!token) return res.json(false);
    const verified = jwt.verify(token, "passwordKey");
    if (!verified) return res.json(false);

    const user = await User.findById(verified.id);
    if (!user) return res.json(false);
    res.json(true);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// get user data
authRouter.get("/", auth, async (req, res) => {
  const user = await User.findById(req.user);
  res.json({ ...user._doc, token: req.token });
});

module.exports = authRouter;
