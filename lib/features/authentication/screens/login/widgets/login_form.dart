import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),

            SizedBox(height: TSizes.spaceBtwInputFields / 2 ,),

            /// remember me & forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///  remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {},),
                    Text(TTexts.rememberMe)
                  ],
                ),

                ///forget Password
                TextButton(onPressed: () {}, child: Text(TTexts.forgetPassword)),
              ],
            ),
            SizedBox(height: TSizes.spaceBtwSections,),

            ///signing button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {

              }, child: Text(TTexts.signIn)),
            ),
            SizedBox(height: TSizes.spaceBtwItems,),
            ///create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () {

              }, child: Text(TTexts.createAccount)),
            ),

          ],
        ),
      ),
    );
  }
}