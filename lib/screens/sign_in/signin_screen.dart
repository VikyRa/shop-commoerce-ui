import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/sign_in/components/signin_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign-in-screen';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SignBodyScreen(),
    );
  }
}
