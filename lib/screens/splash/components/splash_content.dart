import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Text(
                'INFUSE VALUE',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text!,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(50),
              ),
              Image.asset(
                image!,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(235),
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(100),
        ),
      ],
    );
  }
}
