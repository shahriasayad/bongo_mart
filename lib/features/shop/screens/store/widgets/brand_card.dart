import 'package:bongo_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bongo_mart/common/widgets/icons/brand_title_with_verified_icon.dart';
import 'package:bongo_mart/common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/enums.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onTap,
    this.showBorder = true,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: CircularImage(
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.dark,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            //Brand Name
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTitleSize: TextSizes.large,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 3),
                  Text(
                    '256 products',
                    maxLines: 1,
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )

            //Brand Logo
          ],
        ),
      ),
    );
  }
}
