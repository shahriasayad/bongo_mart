import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          onChanged: (value) {},
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.category),
            hintText: '',
            hintStyle: TextStyle(
              fontSize: 12,
              color: Theme.of(context).textTheme.bodySmall!.color,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(TSizes.md),
            ),
          ),
          hint: Center(
            child: Text(
              'Select Category',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
              .toList(),
        ),
        SizedBox(height: TSizes.spaceBtwSections),
        GridLayout(
          itemCount: 10,
          itemBuilder: (_, index) => ProductCardVertical(),
        )
      ],
    );
  }
}
