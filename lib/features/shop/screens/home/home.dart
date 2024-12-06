import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bongo_mart/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bongo_mart/common/widgets/products_cart/cart_counter_icon.dart';
import 'package:bongo_mart/common/widgets/texts/section_header.dart';
import 'package:bongo_mart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/image_strings.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/constants/text_strings.dart';
import 'package:bongo_mart/utils/device/device_utility.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
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
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const SearchContainer(
                    text: "Search in Store",
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeader(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return VerticalImageText(
                                image: TImages.shoeIcon,
                                title: 'Shoes',
                                onTap: () {},
                                textColor: Colors.white,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
