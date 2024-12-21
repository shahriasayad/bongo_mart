import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bongo_mart/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bongo_mart/common/widgets/images/rounded_image.dart';
import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bongo_mart/common/widgets/texts/section_header.dart';
import 'package:bongo_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:bongo_mart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:bongo_mart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/enums.dart';
import 'package:bongo_mart/utils/constants/image_strings.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/constants/text_strings.dart';
import 'package:bongo_mart/utils/device/device_utility.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDesktop = TDeviceUtils.isDesktop(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  SearchContainer(text: "Search in Store"),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeader(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                children: [
                  PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  SectionHeader(
                    title: "Popular Products",
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  GridLayout(
                      itemCount: 8,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
