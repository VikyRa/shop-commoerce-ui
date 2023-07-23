import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/complete_profile/components/com_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete-profile';
  const CompleteProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Complete Profile',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: const CompleteProfileBodyScreen(),
    );
  }
}
