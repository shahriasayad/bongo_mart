import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bongo_mart/common/widgets/products_cart/cart_counter_icon.dart';
import 'package:bongo_mart/features/shop/screens/widgets/home_appbar.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
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
                  const SearchContainer(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        Text("Popular Categories",
                            style: Theme.of(context).textTheme.headlineSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis),
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
