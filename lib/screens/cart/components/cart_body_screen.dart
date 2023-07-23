import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/model/Cart.dart';
import 'package:shop/screens/cart/components/cart_item_card.dart';
import 'package:shop/size_config.dart';

class CartBody extends StatefulWidget {
  const CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(8),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey(demoCarts[index].product.id.toString()),
          background: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                const Spacer(),
                SvgPicture.asset('assets/icons/Trash.svg'),
              ],
            ),
          ),
          child: CartItemCard(cart: demoCarts[index]),
          onDismissed: (direction) {
            setState(() {
              demoCarts.removeAt(index);
            });
          },
        ),
      ),
    );
  }
}
