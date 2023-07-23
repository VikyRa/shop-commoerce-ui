import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constant.dart';
import 'package:shop/size_config.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileNavButton(
          text: "My Account",
          icon: "assets/icons/User Icon.svg",
          press: () => {},
        ),
        ProfileNavButton(
          text: "Notifications",
          icon: "assets/icons/Bell.svg",
          press: () {},
        ),
        ProfileNavButton(
          text: "Settings",
          icon: "assets/icons/Settings.svg",
          press: () {},
        ),
        ProfileNavButton(
          text: "Help Center",
          icon: "assets/icons/Question mark.svg",
          press: () {},
        ),
        ProfileNavButton(
          text: "Log Out",
          icon: "assets/icons/Log out.svg",
          press: () {},
        ),
      ],
    );
  }
}

class ProfileNavButton extends StatelessWidget {
  const ProfileNavButton({
    Key? key,
    required this.press,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final VoidCallback press;
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF5F6F9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            side: const BorderSide(color: Colors.white)),
        onPressed: press,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(1),
            vertical: getProportionateScreenWidth(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 20,
                color: kPrimaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(115),
      width: getProportionateScreenWidth(115),
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Image.png'),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  child: SvgPicture.asset('assets/icons/Camera Icon.svg')),
            ),
          )
        ],
      ),
    );
  }
}
