import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/otp/components/otp_body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = '/opt-screen';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OTP Screen',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: const OtpBodyScreen(),
    );
  }
}
