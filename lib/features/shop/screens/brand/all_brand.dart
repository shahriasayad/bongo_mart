import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/texts/section_heading.dart';
import 'package:bongo_mart/features/shop/screens/brand/brand_products.dart';
import 'package:bongo_mart/features/shop/screens/store/widgets/brand_card.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('All Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SectionHeading(title: 'Brands'),
              SizedBox(height: TSizes.spaceBtwItems),
              GridLayout(
                itemCount: 20,
                mainAxisExtent: 100,
                itemBuilder: (_, index) => BrandCard(
                  onTap: () {
                    Get.to(() => BrandProducts());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
