import 'package:flutter/material.dart';
import 'package:shop/components/custom_surfix_icon.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop/screens/home/home_screen.dart';
import 'package:shop/size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool? remember = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(50)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPassword.routeName);
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(350),
            height: getProportionateScreenHeight(56),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: (() {
                if (_formKey.currentState!.validate()) {
                  // print('Password ${passwordController.text}');
                  // print('Email ${emailController.text}');
                  // _formKey.currentState!.save();
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.routeName, (route) => false);
                }
              }),
              child: const Text(
                'Sign In',
              ),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your email',
          labelText: "Email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/Mail.svg',
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      controller: passwordController,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your password',
          labelText: "Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/Lock.svg',
          )),
    );
  }
}
