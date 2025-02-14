import 'package:ecommerce/common/images/t_roundered_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TRoundedImage(
        imageUrl: TImages.user,
        width: 50,
        height: 50,
      ),
      title: Text(
        "L'index dev",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        "lindex171@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: TColors.white),
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Iconsax.edit,color: TColors.white,)),
    );
  }
}