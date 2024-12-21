import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CircularFavoriteIcon extends StatelessWidget {
  const CircularFavoriteIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.color,
    required this.icon,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final Color? color;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunctions.isDarkMode(context)
                  ? TColors.black.withOpacity(0.0)
                  : TColors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}
