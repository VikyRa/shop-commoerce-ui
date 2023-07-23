import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/otp/components/otp_form_screen.dart';
import 'package:shop/size_config.dart';

class OtpBodyScreen extends StatelessWidget {
  const OtpBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +1 898 860 ***"),
              buildTimerWidget(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const OtpFormScreen(),
            ],
          )),
        ),
      ),
    );
  }

  Row buildTimerWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0.0),
            duration: const Duration(seconds: 30),
            builder: (_, value, child) {
              return Text(
                '00:${value.toInt()}',
                style: const TextStyle(color: kPrimaryColor),
              );
            })
      ],
    );
  }
}
