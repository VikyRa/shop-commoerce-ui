import 'package:flutter/material.dart';
import 'package:shop/size_config.dart';

class DiscountBannerWidget extends StatelessWidget {
  const DiscountBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      width: double.infinity,
      // height: getProportionateScreenHeight(90),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF4A3298),
      ),
      child: Text.rich(
        TextSpan(style: const TextStyle(color: Colors.white), children: [
          const TextSpan(text: "A Summer Surpise\n"),
          TextSpan(
            text: "Cashback 20%",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(24),
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
    );
  }
}
