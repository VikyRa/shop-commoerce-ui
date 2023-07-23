import 'package:flutter/material.dart';
import 'package:shop/screens/cart/cart_screen.dart';
import 'package:shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop/screens/home/home_screen.dart';
import 'package:shop/screens/login_success/login_success_screen.dart';
import 'package:shop/screens/otp/otp_screen.dart';
import 'package:shop/screens/profile/profile_screen.dart';
import 'package:shop/screens/sign_in/signin_screen.dart';
import 'package:shop/screens/signup/signup_screen.dart';
import 'package:shop/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  LoginSuccess.routeName: (context) => const LoginSuccess(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  // ProductDetail.routeName: (context) =>  ProductDetail(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
