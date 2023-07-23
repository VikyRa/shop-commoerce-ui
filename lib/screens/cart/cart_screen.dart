import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constant.dart';
import 'package:shop/model/Cart.dart';
import 'package:shop/screens/cart/components/cart_body_screen.dart';
import 'package:shop/screens/cart/components/check_out_card.dart';
import 'package:shop/size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CartBody(),
      bottomNavigationBar: const CartBottomNavigation(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: SizedBox(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero,
          ),
          onPressed: () => Navigator.pop(context),
          child: SvgPicture.asset(
            "assets/icons/Back ICon.svg",
            height: 15,
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text(
              'Your Cart',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '${demoCarts.length} Items',
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
    );
  }
}
