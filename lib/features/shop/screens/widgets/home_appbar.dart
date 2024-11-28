import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/products_cart/cart_counter_icon.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ),
      ],
    );
  }
}
