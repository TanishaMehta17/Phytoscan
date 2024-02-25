const express = require("express");
const userRouter = express.Router();
const auth = require("../middlewares/auth");
const Order = require("../models/order");
const { Product } = require("../models/product");
const User = require("../models/user");
const {Plant}=require("../models/plant");

userRouter.post("/api/add-to-cart", auth,async (req, res) => {
  try {
    const { id } = req.body;
    console.log(id)
    const product = await Product.findOne({"name":id});
    console.log(product)
    let user = await User.findById(req.user);
    console.log(user)
    if (user.cart.length == 0) {
      const temp={product,quantity:1}
      user.cart.push(temp);
      console.log("1 prod")
    } else {
      const temp={product,quantity:1}
      console.log(temp)
      let isProductFound = false;
      for (let i = 0; i < user.cart.length; i++) {
        if (user.cart[i].product._id.equals(product._id)) {
          isProductFound = true;
        }
      }

      if (isProductFound) {
        let producttt = user.cart.find((productt) =>
          productt.product._id.equals(product._id)
        );
        producttt.quantity += 1;
      } else {
        user.cart.push(temp);
      }
    }
    console.log(user);
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

userRouter.delete("/api/remove-from-cart/:id", auth, async (req, res) => {
  try {
    const { id } = req.params;
    const product = await Product.findById(id);
    let user = await User.findById(req.user);

    for (let i = 0; i < user.cart.length; i++) {
      if (user.cart[i].product._id.equals(product._id)) {
        if (user.cart[i].quantity == 1) {
          user.cart.splice(i, 1);
        } else {
          user.cart[i].quantity -= 1;
        }
      }
    }
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// save user address
userRouter.post("/api/save-user-address", auth, async (req, res) => {
  try {
    const { address } = req.body;
    let user = await User.findById(req.user);
    user.address = address;
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

// order product
userRouter.post("/api/order", auth, async (req, res) => {
  try {
    const { cart, totalPrice, address } = req.body;
    let products = [];

    for (let i = 0; i < cart.length; i++) {
      let product = await Product.findById(cart[i].product._id);
      if (product.quantity >= cart[i].quantity) {
        product.quantity -= cart[i].quantity;
        products.push({ product, quantity: cart[i].quantity });
        await product.save();
      } else {
        return res
          .status(400)
          .json({ msg: `${product.name} is out of stock!` });
      }
    }

    let user = await User.findById(req.user);
    user.cart = [];
    user = await user.save();

    let order = new Order({
      products,
      totalPrice,
      address,
      userId: req.user,
      orderedAt: new Date().getTime(),
    });
    order = await order.save();
    res.json(order);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

userRouter.get("/api/orders/me", auth, async (req, res) => {
  try {
    const orders = await Order.find({ userId: req.user });
    res.json(orders);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
var i=0;
userRouter.get("/auth/get-products", async (req, res) => {
  try {
    //const {user}=req.body;
   // console.log(user)
    const products = await Product.find({});
    console.log("i:",i);i++;
    res.json(products);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
userRouter.post("/auth/predict-image",async (req, res) => {
  try {
    //const {user}=req.body;
   // console.log(user)
   const {url} = req.body;
   console.log(url)
   const response=await fetch("http://127.0.0.1:5000/predict",{
    method:"POST",
    headers:{
      "Content-Type":"application/json"
    },body:JSON.stringify({
      "url":url
    })
      
   })

    const data = await response.json();
    if(data){
      console.log(data.class)
      const details=await Plant.findOne({"ORIGINAL_NAME":data.class});
      // details["link"]=url;
      const temp={"data":details,"link":url}
      console.log(temp)
      res.status(200).json(temp);
    }else{
      res.status(400).json({"data":"Unable to fetch details"})
    }
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});
module.exports = userRouter;
