import 'package:flutter/material.dart';
import 'package:shop/components/custom_surfix_icon.dart';
import 'package:shop/constant.dart';
import 'package:shop/screens/otp/otp_screen.dart';
import 'package:shop/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _completeProForm = GlobalKey<FormState>();
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _address = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstname.dispose();
    _lastname.dispose();
    _mobile.dispose();
    _address.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _completeProForm,
      child: Column(
        children: [
          buildFirstNameTextWidget(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildLastNameTextWidget(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildMobileTextWidget(),
          SizedBox(height: getProportionateScreenHeight(40)),
          buildAddressTextWidget(),
          SizedBox(height: getProportionateScreenHeight(40)),
          SizedBox(
            width: getProportionateScreenWidth(350),
            height: getProportionateScreenHeight(56),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {
                if (_completeProForm.currentState!.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              },
              child: const Text('continue'),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField buildAddressTextWidget() {
    return TextFormField(
      controller: _address,
      validator: (value) {
        if (value!.isEmpty) {
          return kAddressNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your address',
          labelText: 'Address',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/Location_point.svg',
          )),
    );
  }

  TextFormField buildMobileTextWidget() {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: _mobile,
      validator: (value) {
        if (value!.isEmpty) {
          return kPhoneNumberNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your mobile',
          labelText: 'Mobile',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/Phone.svg',
          )),
    );
  }

  TextFormField buildLastNameTextWidget() {
    return TextFormField(
      controller: _lastname,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter last name';
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your name',
          labelText: 'Last Name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildFirstNameTextWidget() {
    return TextFormField(
      controller: _firstname,
      validator: (value) {
        if (value!.isEmpty) {
          return kNamelNullError;
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: 'Enter your name',
          labelText: 'First Name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: 'assets/icons/User.svg',
          )),
    );
  }
}
