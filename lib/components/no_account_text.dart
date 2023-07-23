import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/signup/signup_screen.dart';
import 'package:shop/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //     context,
            //     PageTransition(
            //         child: const SignUpScreen(),
            //         type: PageTransitionType.bottomToTopJoined,
            //         alignment: Alignment.center));
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.bottomToTopJoined,
                    alignment: Alignment.bottomCenter,
                    child: const SignUpScreen(),
                    childCurrent: this));
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
