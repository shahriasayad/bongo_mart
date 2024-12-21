import 'package:bongo_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.productImages,
  });

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      padding: const EdgeInsets.all(TSizes.md),
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          //Brand with Products Count
          const BrandCard(
            showBorder: false,
          ),

          const SizedBox(height: TSizes.spaceBtwItems),
          Row(
            children: productImages
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  final isDark = THelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: isDark ? TColors.darkerGrey : TColors.light,
      margin: const EdgeInsets.only(right: TSizes.sm),
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
