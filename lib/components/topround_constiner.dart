import 'package:flutter/material.dart';
import 'package:shop/size_config.dart';

class TopRoundContainer extends StatelessWidget {
  const TopRoundContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 300,
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.only(
          top: getProportionateScreenWidth(20),
          bottom: getProportionateScreenWidth(10)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
