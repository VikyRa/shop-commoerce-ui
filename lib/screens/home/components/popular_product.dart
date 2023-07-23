import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shop/components/product_card.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/screens/home/components/section_title.dart';
import 'package:shop/screens/product_details/product_details.dart';
import 'package:shop/size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(15),
              right: getProportionateScreenWidth(15),
              top: getProportionateScreenHeight(15)),
          child: SectionTitle(title: 'Popular Product', press: () {}),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: ProductDetail(
                            product: demoProducts[index],
                          ),
                          type: PageTransitionType.leftToRight,
                          childCurrent: this),
                    );
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
                height: getProportionateScreenHeight(150),
              )
            ],
          ),
        ),
      ],
    );
  }
}
