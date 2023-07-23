import 'package:flutter/material.dart';
import 'package:shop/components/topround_constiner.dart';
import 'package:shop/constant.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/screens/product_details/components/color_dots.dart';
import 'package:shop/screens/product_details/components/product_description.dart';
import 'package:shop/screens/product_details/components/product_image_preview.dart';
import 'package:shop/size_config.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImageWidget(product: product),
          TopRoundContainer(
            color: Colors.white,
            child: ProductDescription(
              product: product,
              pressOnSeeMore: () {},
            ),
          ),
          TopRoundContainer(
            color: const Color(0xFFF6F7F9),
            child: ColorsDotSelectCondition(product: product),
          ),
          TopRoundContainer(
            color: const Color(0xFFF6F7F9),
            child: Container(
              margin: EdgeInsets.only(
                left: getProportionateScreenWidth(30),
                right: getProportionateScreenWidth(30),
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              width: getProportionateScreenWidth(350),
              height: getProportionateScreenHeight(56),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (() {}),
                child: const Text(
                  'Add To Cart',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
