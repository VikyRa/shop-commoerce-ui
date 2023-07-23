import 'package:flutter/material.dart';
import 'package:shop/components/custom_surfix_icon.dart';
import 'package:shop/components/no_account_text.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/login_success/login_success_screen.dart';
import 'package:shop/size_config.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgot-screen';
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Please enter your email and we will send \nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                const ForgotPassForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _forgotform = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  bool? remember = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _forgotform,
      child: Column(
        children: [
          TextFormField(
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
              labelText: "Email",
              hintText: "Enter your email",
              // If  you are using latest version of flutter then lable text and hint text shown like this
              // if you r using flutter less then 1.20.* then maybe this is not working properly
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          SizedBox(
            width: getProportionateScreenWidth(350),
            height: getProportionateScreenHeight(56),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: (() {
                if (_forgotform.currentState!.validate()) {
                  // print('Email ${emailController.text}');
                  Navigator.pushNamed(context, LoginSuccess.routeName);
                }
              }),
              child: const Text(
                'Continue',
              ),
            ),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          const NoAccountText(),
        ],
      ),
    );
  }
}
