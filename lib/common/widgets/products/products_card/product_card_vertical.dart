import 'package:bongo_mart/common/styles/shadows.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:bongo_mart/common/widgets/icons/brand_title_with_verified_icon.dart';
import 'package:bongo_mart/common/widgets/icons/circular_icon.dart';
import 'package:bongo_mart/common/widgets/images/rounded_image.dart';
import 'package:bongo_mart/common/widgets/texts/product_price.dart';
import 'package:bongo_mart/common/widgets/texts/product_title.dart';
import 'package:bongo_mart/features/shop/screens/product_ditails/product_ditails.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/image_strings.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      // onTap: () => Get.to(() => ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          //boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: isDark ? TColors.secondary : TColors.grey,
        ),
        child: Column(
          children: [
            Flexible(
              child: RoundedContainer(
                width: double.infinity,
                padding: EdgeInsets.all(TSizes.sm),
                backgroundColor: isDark ? TColors.secondary : TColors.grey,
                child: Stack(
                  children: [
                    //Thumbnail Image
                    RoundedImage(
                      padding: EdgeInsets.zero,
                      height: double.infinity,
                      width: double.infinity,
                      backgroundColor: isDark
                          ? TColors.secondary
                          : TColors.light.withOpacity(0.2),
                      fit: BoxFit.contain,
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                    ),
                    Positioned(
                      top: 6,
                      left: 6,
                      child: RoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: isDark
                            ? TColors.primary.withOpacity(0.7)
                            : TColors.primary.withOpacity(0.8),
                        padding: EdgeInsets.symmetric(
                            horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text(
                          '25% off',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.white),
                        ),
                      ),
                    ),

                    Positioned(
                      right: 2,
                      top: 0,
                      child: CircularFavoriteIcon(
                        icon: Iconsax.heart5,
                        width: 40,
                        height: 40,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitle(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  BrandTitleWithVerifiedIcon(
                    title: 'Nike',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductPrice(
                        price: '1800',
                      ),
                      SizedBox(width: TSizes.xs),
                      Container(
                        margin: EdgeInsets.only(
                            bottom: TSizes.sm / 2, right: TSizes.sm / 2),
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                              size: TSizes.iconLg,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
