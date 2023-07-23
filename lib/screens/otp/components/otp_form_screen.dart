import 'package:flutter/material.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/home/home_screen.dart';
import 'package:shop/size_config.dart';

class OtpFormScreen extends StatefulWidget {
  const OtpFormScreen({super.key});

  @override
  State<OtpFormScreen> createState() => _OtpFormScreenState();
}

class _OtpFormScreenState extends State<OtpFormScreen> {
  final _otpform = GlobalKey<FormState>();
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _otpform,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: getProportionateScreenWidth(60),
                  child: TextFormField(
                    autofocus: true,
                    obscureText: true,
                    style: const TextStyle(fontSize: 24),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: otpInputDecoration,
                    onChanged: (value) {
                      nextField(value, pin2FocusNode);
                    },
                  )),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: const TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(
            width: getProportionateScreenWidth(350),
            height: getProportionateScreenHeight(56),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (() {
                  if (_otpform.currentState!.validate()) {
                    // print('Password ${passwordController.text}');
                    // print('Email ${emailController.text}');
                    // _formKey.currentState!.save();
                    // Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName);
                    Navigator.pushNamedAndRemoveUntil(
                        context, HomeScreen.routeName, (route) => false);
                  }
                }),
                child: const Text('Continue')),
          )
        ],
      ),
    );
  }
}
