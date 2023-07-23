import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/sign_in/signin_screen.dart';
import 'package:shop/screens/splash/components/splash_content.dart';
import 'package:shop/size_config.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Tokoto, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "We help people conect with store \naround United State of America",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: ((context, index) => SplashContent(
                        image: splashData[index]['image'],
                        text: splashData[index]['text'],
                      )),
                ),
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => bootDot(index: index),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(300),
                    height: getProportionateScreenHeight(56),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: (() {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      }),
                      child: const Text(
                        'Continue',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(100),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer bootDot({required int index}) {
    return AnimatedContainer(
      duration: KAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
