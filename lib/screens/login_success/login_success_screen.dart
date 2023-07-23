import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop/constant.dart';
import 'package:shop/size_config.dart';

class LoginSuccess extends StatelessWidget {
  static String routeName = "/login-success";
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: Column(
        children: [
          Lottie.asset('assets/lottianimation/animation_lk5aajt1.json'),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          SizedBox(
            width: getProportionateScreenWidth(350),
            height: getProportionateScreenHeight(56),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: (() {}),
              child: const Text(
                'DashBord',
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
