import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:phytoscan/common/error_handling.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/models/user.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:cloudinary_public/cloudinary_public.dart';
class ProductDetailsServices {
  
  void addToCart({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    print(userProvider.user.token);
    print(product.name);
    print(product.price);
    //print(product.id);
    try {
     
      http.Response res = await http.post(
        Uri.parse('$uri/api/add-to-cart'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.name,
        }),
      );
      
        User user =
              userProvider.user.copyWith(cart: jsonDecode(res.body)['cart']);
          userProvider.setUserFromModel(user);
          print(userProvider.user.cart);
      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () {
      //     User user =
      //         userProvider.user.copyWith(cart: jsonDecode(res.body)['cart']);
      //     userProvider.setUserFromModel(user);
      //   },
      // );
      print("ddd");
    } catch (e) {
      print(e.toString());
    }
  }

  Future<List<Product>> fetchCartProducts({
    required BuildContext context,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Product> productList = [];
    try {
      http.Response res =
          await http.get(Uri.parse('$uri/api/products'), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
         'x-auth-token': userProvider.user.token,
      });
     for (int i = 0; i < jsonDecode(res.body).length; i++) {
            productList.add(
              Product.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
      // httpErrorHandle(
      //   response: res,
      //   context: context,
      //   onSuccess: () {
          
      //   },
      // );
    } catch (e) {
      print(e.toString());
    }
    return productList;
  }

  void removeFromCart({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.delete(
        Uri.parse('$uri/api/remove-from-cart/${product.id}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
            'x-auth-token': userProvider.user.token,
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          User user =
              userProvider.user.copyWith(cart: jsonDecode(res.body)['cart']);
          userProvider.setUserFromModel(user);
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }

  // void rateProduct({
  //   required BuildContext context,
  //   required Product product,
  //   required double rating,
  // }) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);

  //   try {
  //     http.Response res = await http.post(
  //       Uri.parse('$uri/api/rate-product'),
  //       headers: {
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'x-auth-token': userProvider.user.token,
  //       },
  //       body: jsonEncode({
  //         'id': product.id!,
  //         'rating': rating,
  //       }),
  //     );

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {},
  //     );
  //   } catch (e) {
  //  showSnackBar(context, e.toString());
  //   }
  // }
  Future<List<Product>> fetchAllProducts(BuildContext context, {required VoidCallback onSuccess}) async {
  final userProvider = Provider.of<UserProvider>(context, listen: false);
  List<Product> productList = [];
  
  try {
    print("hello");
    http.Response res =
        await http.get(Uri.parse('$uri/auth/get-products'), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'x-auth-token': userProvider.user.token,

    }
    ,
  
    );
    
    httpErrorHandle(
      response: res,
      context: context,
      onSuccess: () {
        for (int i = 0; i < jsonDecode(res.body).length; i++) {
          productList.add(
            Product.fromJson(
              jsonEncode(
                jsonDecode(res.body)[i],
              ),
            ),
          );
        }
        onSuccess(); // Call the onSuccess callback here
      },
    );
  } catch (e) {
    print(e.toString());
  }
  return productList;
}
}