import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/models/user.dart';
import 'package:phytoscan/providers/userprovider.dart';


typedef OtpVerificationCallback = void Function(bool success);
class AuthService{
   void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String username,
    required String confirmpas,
    required String number
  }) async {
    try {
      User user = User(
        id: '',
        username: username,
        password: password,
        number: number,
        gst:'',
        confirmpas:confirmpas,
        email: email,
        address: '',
        type: '',
       // token: '',
        cart: [],
      );

      http.Response res = await http.post(
        Uri.parse('$uri/register'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () {
      //     showSnackBar(
      //       context,
      //       'Account created! Login with the same credentials!',
      //     );
      //   },
      // );
      
    } catch (e) {
      //showSnackBar(context, e.toString());
      print(e.toString());
    }
  }
   void signInUser({
    required BuildContext context,
    required String email,
    required String password,
    required OtpVerificationCallback callback,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () async {
      //     SharedPreferences prefs = await SharedPreferences.getInstance();
      //     Provider.of<UserProvider>(context, listen: false).setUser(res.body);
      //     await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
      //     Navigator.pushNamedAndRemoveUntil(
      //       context,
      //       BottomBar.routeName,
      //       (route) => false,
      //     );
      //   },
      // );
       print(res.statusCode);
    if (res.statusCode == 200) {
      // Successful response
      callback(true); // Notify the caller about successful OTP verification
    } 
    else {
      // Unsuccessful response
      callback(false); // Notify the caller about failed OTP verification
    }
    } catch (e) {
      //showSnackBar(context, e.toString());
      print(e.toString());
    }
  }

  

void otp({
  required BuildContext context,
  required String otp,
  required OtpVerificationCallback callback,
}) async {
  try {
    // final Map<String, dynamic> requestBody = {
    //   'otp': otp,
    // };
    
    http.Response res = await http.post(
      Uri.parse('$uri/api/signup'),
     body: jsonEncode({
      'otp1': otp,
     }),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
   print(res.statusCode);
    if (res.statusCode == 200) {
      // Successful response
      callback(true); // Notify the caller about successful OTP verification
    } 
    else {
      // Unsuccessful response
      callback(false); // Notify the caller about failed OTP verification
    }

  } catch (e) {
    // Catch any exceptions that might occur during the request
    // Notify the caller about the error
    callback(false); // Notify the caller about failed OTP verification due to an error
    //showSnackBar(context, 'Error: ${e.toString()}');
    print(e.toString());
  }
}

   void TradersignUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String username,
    required String gst,
    required String confirmpas,
    required String number
  }) async {
    try {
      User user = User(
        id: '',
        username: username,
        password: password,
        number: number,
        gst:gst,
        confirmpas:confirmpas,
        email: email,
        address: '',
        type: '',
       // token: '',
        cart: [],
      );

      http.Response res = await http.post(
        Uri.parse('$uri/trader/register'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () {
      //     showSnackBar(
      //       context,
      //       'Account created! Login with the same credentials!',
      //     );
      //   },
      // );
      
    } catch (e) {
      //showSnackBar(context, e.toString());
      print(e.toString());
    }
  }

   void TradersignInUser({
    required BuildContext context,
    required String email,
    required String password,
    required OtpVerificationCallback callback,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () async {
      //     SharedPreferences prefs = await SharedPreferences.getInstance();
      //     Provider.of<UserProvider>(context, listen: false).setUser(res.body);
      //     await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
      //     Navigator.pushNamedAndRemoveUntil(
      //       context,
      //       BottomBar.routeName,
      //       (route) => false,
      //     );
      //   },
      // );
       print(res.statusCode);
    if (res.statusCode == 200) {
      // Successful response
      callback(true); // Notify the caller about successful OTP verification
    } 
    else {
      // Unsuccessful response
      callback(false); // Notify the caller about failed OTP verification
    }
    } catch (e) {
      //showSnackBar(context, e.toString());
      print(e.toString());
    }
  }

}