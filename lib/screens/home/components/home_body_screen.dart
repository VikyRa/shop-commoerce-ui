import 'package:flutter/material.dart';
import 'package:shop/screens/home/components/categorie_screen.dart';
import 'package:shop/screens/home/components/discount_banner_screen.dart';
import 'package:shop/screens/home/components/header_screen.dart';
import 'package:shop/screens/home/components/popular_product.dart';
import 'package:shop/screens/home/components/special_offers.dart';
import 'package:shop/size_config.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HeaderScreen(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const DiscountBannerWidget(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const CategoriesScreen(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const PopularProduct(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
