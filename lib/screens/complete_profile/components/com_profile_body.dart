import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/complete_profile/components/com_profile_form.dart';
import 'package:shop/size_config.dart';

class CompleteProfileBodyScreen extends StatelessWidget {
  const CompleteProfileBodyScreen({super.key});

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
                Text(
                  'Complete Profile',
                  style: headingStyle,
                ),
                const Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                const CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(20)),
                const Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
