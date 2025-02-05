import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions_chackbox.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,

  });

  @override
  Widget build(BuildContext context) {

    return Form(
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
            TTermsAndConditionCheckbox(),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            ///Signup Button
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text(TTexts.createAccount)),),

          ],
        )
    );
  }
}

