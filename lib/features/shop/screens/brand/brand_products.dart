import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/products/sortable/sortable_products.dart';
import 'package:bongo_mart/features/shop/screens/store/widgets/brand_card.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Brand Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              BrandCard(),
              SizedBox(height: TSizes.spaceBtwItems),
              SortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
