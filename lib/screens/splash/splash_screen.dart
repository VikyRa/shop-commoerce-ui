import 'package:flutter/material.dart';
import 'package:shop/screens/splash/components/body.dart';
import 'package:shop/size_config.dart';

// ignore: use_key_in_widget_constructors
class SplashScreen extends StatelessWidget {
  static String routeName = '/splash-screen';
  @override
  Widget build(BuildContext context) {
    // you have to call it your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: BodyScreen(),
    );
  }
}
