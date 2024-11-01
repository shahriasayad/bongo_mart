import 'package:bongo_mart/common/styles/spacing_styles.dart';
import 'package:bongo_mart/common/widgets/login_signup/form_divider.dart';
import 'package:bongo_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:bongo_mart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:bongo_mart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TLoginHeader(dark: dark),
              const TLoginForm(),
              TFormDivider(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
