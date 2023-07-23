import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/components/coustom_bottom_nav_bar.dart';
import 'package:shop/constant.dart';
import 'package:shop/enums.dart';
import 'package:shop/screens/profile/components/profile_body.dart';
import 'package:shop/size_config.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile-screen";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const ProfileBody(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: SizedBox(
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            backgroundColor: Colors.white,
            padding: EdgeInsets.zero,
          ),
          onPressed: () => Navigator.pop(context),
          child: SvgPicture.asset(
            "assets/icons/Back ICon.svg",
            height: 15,
          ),
        ),
      ),
      title: Align(
        alignment: Alignment.center,
        child: Column(
          children: const [
            Text(
              'Profile',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
