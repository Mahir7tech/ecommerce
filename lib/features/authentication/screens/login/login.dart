import 'package:ecommerce/common/styles/spacing_style.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo ),
                ),
                Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.sm),
                Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
              ],
              ),
              /// Form
              Form(child: Column(
                children: [
                  /// Email
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields),

                  /// Password
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields /2),

                  ///Reminder Me & Forgot Password
                  Row(
                    children: [
                      Checkbox(value: true, onChanged:(value){}),
                      const Text(TTexts.rememberMe),
                    ],
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );

  }
}
