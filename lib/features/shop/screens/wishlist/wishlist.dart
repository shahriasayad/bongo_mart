import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/icons/circular_icon.dart';
import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Favourite',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CircularFavoriteIcon(
            icon: Iconsax.heart,
            width: 40,
            height: 40,
            color: isDark ? TColors.light : TColors.dark,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            GridLayout(
              itemCount: 10,
              itemBuilder: (_, index) => ProductCardVertical(),
            )
          ],
        ),
      ),
    );
  }
}
