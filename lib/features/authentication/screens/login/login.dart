import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                ///logo , title & subtitle
                TLoginHeader(),

                ///Form
                TLoginForm(),


               ///Divider
                TFormDivider(deviderText: TTexts.orSignInWith),

                SizedBox(width: TSizes.spaceBtwSections,),

                ///Footer
                TSocialButtons()
              ],
            )),
      ),
    );
  }
}


