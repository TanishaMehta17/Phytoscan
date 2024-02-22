import 'package:flutter/material.dart';
import 'package:phytoscan/address/screen/address_screens.dart';
import 'package:phytoscan/cart/widgets/address_box.dart';
import 'package:phytoscan/cart/widgets/cart_product.dart';
import 'package:phytoscan/cart/widgets/cart_subtotal.dart';
import 'package:phytoscan/common/custom_button.dart';
import 'package:phytoscan/core/app_export.dart';
import 'package:phytoscan/globalvariable.dart';
import 'package:phytoscan/models/product.dart';
import 'package:phytoscan/providers/userprovider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void navigateToAddress(int sum) {
    Navigator.pushNamed(
      context,
      AppRoutes.addressScreen,
      arguments: sum.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    int sum = 0;
    user.cart
        .map((e) => sum += e['quantity'] * e['product']['price'] as int)
        .toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            const CartSubtotal(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                text: 'Proceed to Buy (${user.cart.length} items)',
                onTap: () => navigateToAddress(sum),
                color: Colors.yellow[600],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              color: Colors.black12.withOpacity(0.08),
              height: 1,
            ),
            const SizedBox(height: 5),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: user.cart.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CartProduct(
                  index: index,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
