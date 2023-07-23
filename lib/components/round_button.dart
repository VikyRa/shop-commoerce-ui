import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/size_config.dart';

class RoundBtnIcon extends StatelessWidget {
  const RoundBtnIcon({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenHeight(40),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            )),
        onPressed: press,
        child: Icon(
          icon,
          color: kSecondryColor,
          size: 20,
        ),
      ),
    );
  }
}
