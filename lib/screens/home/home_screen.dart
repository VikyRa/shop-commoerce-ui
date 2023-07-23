import 'package:flutter/material.dart';
import 'package:shop/components/coustom_bottom_nav_bar.dart';
import 'package:shop/enums.dart';
import 'package:shop/screens/home/components/home_body_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBodyScreen(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
