import 'package:flutter/material.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/screens/product_details/components/custom_app_bar.dart';
import 'package:shop/screens/product_details/components/product_detail_body.dart';

class ProductDetail extends StatelessWidget {
  static String routeName = '/product-detail';
  const ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: product.rating),
      ),
      body: ProductDetailBody(product: product),
    );
  }
}
