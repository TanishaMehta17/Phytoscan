const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express.Router();
const jwt = require("jsonwebtoken");
const auth = require("../middlewares/auth");
const nodemailer = require("nodemailer");
const otpGenerator = require("otp-generator");
const session = require("express-session");
const crypto = require("crypto");

const app = express();
// SIGN UP
app.use(
    session({
        secret: crypto.randomBytes(32).toString("hex"), // Change this to a secure secret
        resave: false,
        saveUninitialized: true,
    })
);
let otpMap = new Map();

const transporter = nodemailer.createTransport({
    service: "gmail",
    secure: false,
    host: process.env.SMTP_HOST,
    port: 3000,
    auth: {
        user: process.env.EMAIL_ID,
        pass: process.env.EMAIL_PASS,
    },
});
// Set up your email configuration


authRouter.post("/register", async (req, res) => {
    try {
        const { username, email, number, password, confirmpas } = req.body;
        const existingUser = await User.findOne({ email });
        if (existingUser) {
          return res
            .status(400)
            .json({ msg: "User with same email already exists!" });
        }
        const OTP = otpGenerator.generate(4, { digits: true, alphabets: false, upperCase: false, specialChars: false, lowerCaseAlphabets: false, upperCaseAlphabets: false });
        // Send OTP via email
        const mailOptions = {
            from: "bansalmohit123654@gmail.com",
            to: email,
            subject: "OTP Verification",
            text: `Your OTP for user ${username} is ${OTP}`,
        };

        const data = {"username":username,"email":email,"number":number,"password":password,"confirmpas":confirmpas};
        const hashedPassword = await bcryptjs.hash(password, 8);

        data.password = hashedPassword;
        console.log(data)

        await transporter.sendMail(mailOptions, function (error, info) {
            if (error) {
                console.log(error);
            } else {
                console.log("Email sent: " + info.response);
                registrationInfo = new User(data);
                temp={"OTP":OTP,"object":registrationInfo}
                console.log(OTP,temp)
                otpMap.set(email, temp);
            }
        });
        
        
        // registrationInfo = await registrationInfo.save();
        res.status(200).json({ msg: "OTP sent successfully" });
    } catch (e) {
        res.status(500).json({ error: e.message });
    }
});

authRouter.post("/api/signup", async (req, res) => {
    try {
        const { otp1,email } = req.body;

        temp=otpMap.get(email)
        // console.log()

        if (otp1 != temp.OTP) {
            return res.status(400).json({ msg: "OTP doest not Match" });
        }
        temp.object.save();
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
        console.log(email,password)
        var user = await User.findOne({ email });
        console.log(user)
        if (!user) {
            return res.status(400).json({ msg: "User with this email does not exist!" });
        }

        const isMatch = await bcryptjs.compare(password, user.password);
        if (!isMatch) {
            return res.status(400).json({ msg: "Incorrect password." });
        }
         console.log("sign");
        const token = jwt.sign({ id: user._id }, process.env.SECRET_KEY);
        delete user["password"]
        delete user["confirmpas"]
        user["token"]=token
        var temp=JSON.stringify({...user._doc,password: undefined,
            confirmpas: undefined,
            token: token})

        data={isSuccess:true,"user":temp,"token":token};
        console.log(data)
        res.status(200).json(data);
    } catch (e) {
        res.status(500).json({isSuccess:false, error: e.message });
    }
});

authRouter.post("/tokenIsValid", async (req, res) => {
    try {
        const token = req.header("x-auth-token");
        if (!token) return res.json(false);
        const verified = jwt.verify(token, process.env.SECRET_KEY);
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



authRouter.post("/trader/register", async (req, res) => {
  try {
      const { username, email, number, password, confirmpas } = req.body;

      const existingUser = await User.findOne({ email });
      if (existingUser) {
        return res
          .status(400)
          .json({ msg: "User with same email already exists!" });
      }
      const OTP = otpGenerator.generate(4, { digits: true, alphabets: false, upperCase: false, specialChars: false, lowerCaseAlphabets: false, upperCaseAlphabets: false });
      // Send OTP via email
      const mailOptions = {
          from: "bansalmohit123654@gmail.com",
          to: email,
          subject: "OTP Verification",
          text: `Your OTP for user ${username} is ${OTP}`,
      };

      const data = {"username":username,"email":email,"number":number,"password":password,"confirmpas":confirmpas,"type":"trader"};
      const hashedPassword = await bcryptjs.hash(password, 8);

      data.password = hashedPassword;
      console.log(data)

      await transporter.sendMail(mailOptions, function (error, info) {
          if (error) {
              console.log(error);
          } else {
              console.log("Email sent: " + info.response);
              registrationInfo = new User(data);
              temp={"OTP":OTP,"object":registrationInfo}
              console.log(OTP,temp)
              otpMap.set(email, temp);
          }
      });
      
      
      // registrationInfo = await registrationInfo.save();
      res.status(200).json({ msg: "OTP sent successfully" });
  } catch (e) {
      res.status(500).json({ error: e.message });
  }
});

module.exports = authRouter;
