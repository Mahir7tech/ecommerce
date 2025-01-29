import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets_login_singup/form_divider.dart';
import '../../../../common/widgets_login_singup/social_button.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children:[
              /// Logo, Title & Sub-Title
              TLoginHeader(dark: dark),

              /// Form
              TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSection),

              /// Footer
              TSocialButton(),
            ],
          ),
        ),
      ),
    );

  }
}
