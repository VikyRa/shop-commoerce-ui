import 'package:flutter/material.dart';
import 'package:shop/components/round_button.dart';
import 'package:shop/constant.dart';
import 'package:shop/model/Product.dart';
import 'package:shop/size_config.dart';

class ColorsDotSelectCondition extends StatelessWidget {
  const ColorsDotSelectCondition({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int isSelectedColor = 2;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => InkWell(
              onTap: () {},
              child: ColorsDot(
                color: product.colors[index],
                isSelected: isSelectedColor == index,
              ),
            ),
          ),
          const Spacer(),
          RoundBtnIcon(icon: Icons.remove, press: () {}),
          const SizedBox(
            // width: getProportionateScreenWidth(15),
            child: Text('0'),
          ),
          RoundBtnIcon(icon: Icons.add, press: () {})
        ],
      ),
    );
  }
}

class ColorsDot extends StatelessWidget {
  const ColorsDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(2),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape: BoxShape.circle,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      )),
    );
  }
}
