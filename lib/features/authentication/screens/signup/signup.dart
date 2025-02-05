import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Title
                Text(
                  TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Form
                Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ///First name
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                            expands: false,
                          ),
                        ),
                        SizedBox(
                          width: TSizes.spaceBtwInputFields,
                        ),

                        ///Last name
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: TTexts.firstName,
                                prefixIcon: Icon(Iconsax.user)),
                            expands: false,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    ///User name
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: TTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                      expands: false,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    ///Email
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: TTexts.email,
                          prefixIcon: Icon(Iconsax.direct)),
                      expands: false,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),

                    ///Password
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                      expands: false,
                    ),

                    SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    ///Terms & conditions checkbox
                    Row(
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child: Checkbox(
                              value: true,
                              onChanged: (value) {},
                            )),
                        SizedBox(
                          width: TSizes.spaceBtwItems,
                        ),
                        Text.rich(
                          TextSpan(children: [
                            TextSpan(
                                text: "${TTexts.iAgreeTo} ",
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                                text: "${TTexts.privacyPolicy}",
                                style: Theme.of(context).textTheme.bodyMedium!.apply(
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary,decoration: TextDecoration.underline,decorationColor: dark ? TColors.white : TColors.black)),
                            TextSpan(
                                text: "${TTexts.and} ",
                                style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(
                                text: TTexts.termsOfUse,
                                style: Theme.of(context).textTheme.bodyMedium!.apply(
                                    color: dark
                                        ? TColors.white
                                        : TColors.primary,decoration: TextDecoration.underline,decorationColor: dark ? TColors.white : TColors.black)),
                          ]),

                        ),
                      ],
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    ///Signup Button
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text(TTexts.createAccount)),),

                  ],
                )
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                ///Divider
                TFormDivider(deviderText: TTexts.orSignUpWith,),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                /// Social buttons
                TSocialButtons()

              ],
            )),
      ),
    );
  }
}
