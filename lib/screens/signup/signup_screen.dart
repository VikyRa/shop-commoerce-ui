import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/signup/components/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: const SignUpBody(),
    );
  }
}
