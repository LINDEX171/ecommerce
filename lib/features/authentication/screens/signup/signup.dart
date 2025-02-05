import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Title
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Form
                const TSignupForm(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                ///Divider
                const TFormDivider(deviderText: TTexts.orSignUpWith,),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                /// Social buttons
                const TSocialButtons()

              ],
            )),
      ),
    );
  }
}


