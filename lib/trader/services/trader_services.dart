import 'dart:convert';
import 'dart:io';
//import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:phytoscan/common/error_handling.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/models/plant.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:provider/provider.dart';

class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    print(userProvider.user.id);

    try {
      final cloudinary = CloudinaryPublic('dvigrju5p', 'wdipybgs');
      List<String> imageUrls = [];
       
      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }

      Product product = Product(
        name: name,
        description: description,
        quantity: quantity,
        images: imageUrls,
        price: price,
        soldBy: userProvider.user.id,
      );
      print("TATATA");
      http.Response res = await http.post(
        Uri.parse('$uri/admin/add-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: product.toJson(),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          print('Product Added Successfully!');
          
          Navigator.pop(context);
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }

  // get all the products
  Future<List<Product>> fetchAllProducts(BuildContext context, {required VoidCallback onSuccess}) async {
  final userProvider = Provider.of<UserProvider>(context, listen: false);
  List<Product> productList = [];
  print("MOHIT");
  try {
    http.Response res =
        await http.post(Uri.parse('$uri/admin/get-products'), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      'x-auth-token': userProvider.user.token,

    },body:jsonEncode({
      "user":userProvider.user.id
    }));
    print("BYEEEEEEE");
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

  void deleteProduct({
    required BuildContext context,
    required Product product,
    required VoidCallback onSuccess,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse('$uri/admin/delete-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.id,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }
   


    void image({
    required BuildContext context,

    required List<File> images,
  }) async {
      final userProvider = Provider.of<UserProvider>(context, listen: false);
  
   
    print(userProvider.user.id);

    try {
      final cloudinary = CloudinaryPublic('dvigrju5p', 'wdipybgs');
      List<String> imageUrls = [];
       
      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: "name"),
        );
        imageUrls.add(res.secureUrl);
      }
      
     
      
      http.Response res = await http.post(
        Uri.parse('$uri/auth/predict-image'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode(imageUrls),
      );
     
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          if(res.statusCode==200){
            
            
              
               Plant plant=  Plant.fromJson(jsonEncode(jsonDecode(res.body[1])));
              
          
          } 
          print('Product Added Successfully!');
          
          Navigator.pop(context);
        },
      );
    } catch (e) {
      print(e.toString());
    }
  
  }

  // Future<List<Order>> fetchAllOrders(BuildContext context) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   List<Order> orderList = [];
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$uri/admin/get-orders'), headers: {
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'x-auth-token': userProvider.user.token,
  //     });

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {
  //         for (int i = 0; i < jsonDecode(res.body).length; i++) {
  //           orderList.add(
  //             Order.fromJson(
  //               jsonEncode(
  //                 jsonDecode(res.body)[i],
  //               ),
  //             ),
  //           );
  //         }
  //       },
  //     );
  //   } catch (e) {
  //   print( e.toString());
  //   }
  //   return orderList;
  // }

  // void changeOrderStatus({
  //   required BuildContext context,
  //   required int status,
  //   required Order order,
  //   required VoidCallback onSuccess,
  // }) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);

  //   try {
  //     http.Response res = await http.post(
  //       Uri.parse('$uri/admin/change-order-status'),
  //       headers: {
  //         'Content-Type': 'application/json; charset=UTF-8',
  //         'x-auth-token': userProvider.user.token,
  //       },
  //       body: jsonEncode({
  //         'id': order.id,
  //         'status': status,
  //       }),
  //     );

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: onSuccess,
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  // }

  // Future<Map<String, dynamic>> getEarnings(BuildContext context) async {
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   List<Sales> sales = [];
  //   int totalEarning = 0;
  //   try {
  //     http.Response res =
  //         await http.get(Uri.parse('$uri/admin/analytics'), headers: {
  //       'Content-Type': 'application/json; charset=UTF-8',
  //       'x-auth-token': userProvider.user.token,
  //     });

  //     httpErrorHandle(
  //       response: res,
  //       context: context,
  //       onSuccess: () {
  //         var response = jsonDecode(res.body);
  //         totalEarning = response['totalEarnings'];
  //         sales = [
  //           Sales('Mobiles', response['mobileEarnings']),
  //           Sales('Essentials', response['essentialEarnings']),
  //           Sales('Books', response['booksEarnings']),
  //           Sales('Appliances', response['applianceEarnings']),
  //           Sales('Fashion', response['fashionEarnings']),
  //         ];
  //       },
  //     );
  //   } catch (e) {
  //     showSnackBar(context, e.toString());
  //   }
  //   return {
  //     'sales': sales,
  //     'totalEarnings': totalEarning,
  //   };
  // }
}
