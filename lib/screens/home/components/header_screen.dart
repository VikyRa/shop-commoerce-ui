import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/cart/cart_screen.dart';
import 'package:shop/screens/home/components/icon_btn_with_counter.dart';
import 'package:shop/screens/profile/profile_screen.dart';
import 'package:shop/size_config.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: SizeConfig.screenWidth * 0.6,
            // height: getProportionateScreenHeight(50),
            decoration: BoxDecoration(
              color: kSecondryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search Product...",
                contentPadding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20),
                    vertical: getProportionateScreenWidth(9)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: kSecondryColor,
                ),
              ),
            ),
          ),
          IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              press: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const CartScreen(),
                    type: PageTransitionType.leftToRightWithFade,
                  ),
                );
              }),
          IconBtnWithCounter(
              numOfitem: 3,
              svgSrc: "assets/icons/Bell.svg",
              press: () {
                // Navigator.push(
                //   context,
                //   PageTransition(
                //     child: const ProfileScreen(),
                //     type: PageTransitionType.leftToRightWithFade,
                //   ),
                // );
              }),
        ],
      ),
    );
  }
}
