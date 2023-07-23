import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/model/Cart.dart';
import 'package:shop/size_config.dart';

class CartItemCard extends StatefulWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(88),
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(widget.cart.product.images[0]),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.cart.product.title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text.rich(
                TextSpan(
                    text: "\$${widget.cart.product.price}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, color: kPrimaryColor),
                    children: [
                      TextSpan(
                        text: " x ${widget.cart.numOfItem}",
                        style: const TextStyle(color: kTextColor),
                      )
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
