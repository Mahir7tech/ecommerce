import 'package:ecommerce/common/widgets_login_singup/form_divider.dart';
import 'package:ecommerce/common/widgets_login_singup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget{
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(),
    body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Title
            Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwSection),

            /// Form
            const TSignupForm(),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize !),
            const SizedBox(height: TSizes.spaceBtwInputFields),

            ///Social Buttons
            const TSocialButton(),

          ],
        ),
      ),
    ),
    );
  }
}
