import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bongo_mart/common/widgets/texts/section_heading.dart';
import 'package:bongo_mart/features/shop/screens/store/widgets/brand_showcase.dart';
import 'package:bongo_mart/utils/constants/image_strings.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              BrandShowcase(
                productImages: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              BrandShowcase(productImages: [
                TImages.productImage1,
                TImages.productImage2,
                TImages.productImage3,
              ]),
              SectionHeading(
                title: 'You may also like',
                showViewAll: true,
                onPressed: () {},
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return ProductCardVertical();
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
