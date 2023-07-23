import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/size_config.dart';

class ProductImageWidget extends StatefulWidget {
  const ProductImageWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> {
  int selectImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.product.images[selectImage],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreviewImage(index),
            )
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreviewImage(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenHeight(8)),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectImage == index ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
