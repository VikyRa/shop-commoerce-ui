import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
import 'package:shop/components/custom_surfix_icon.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _signupForm = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController _conpasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    _conpasswordController.dispose();
  }

  bool isPasswordVisible = true;
  bool cisPasswordVisible = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signupForm,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            buildConfirmPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SizedBox(
              width: getProportionateScreenWidth(350),
              height: getProportionateScreenHeight(56),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: (() {
                    if (_signupForm.currentState!.validate()) {
                      // print('Password ${passwordController.text}');
                      // print('Email ${emailController.text}');
                      // _formKey.currentState!.save();
                      Navigator.pushNamed(
                          context, CompleteProfileScreen.routeName);
                      // Navigator.push(
                      //     context,
                      //     PageTransition(
                      //         alignment: Alignment.bottomCenter,
                      //         type: PageTransitionType.rightToLeftJoined,
                      //         child: const CompleteProfileScreen(),
                      //         childCurrent: this));
                    }
                  }),
                  child: const Text('Register')),
            )
          ],
        ),
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
      obscureText: isPasswordVisible,
      controller: passwordController,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter your password',
        labelText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: InkWell(
          onTap: () {
            isPasswordVisible = !isPasswordVisible;
            setState(() {});
          },
          child: isPasswordVisible
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: cisPasswordVisible,
      controller: _conpasswordController,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        } else if (value != passwordController.text) {
          return kMatchPassError;
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Confirm Password",
          hintText: "Re-enter your password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: InkWell(
            onTap: () {
              cisPasswordVisible = !cisPasswordVisible;
              setState(() {});
            },
            child: cisPasswordVisible
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          )),
    );
  }
}
