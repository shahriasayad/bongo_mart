import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkerGrey.withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 50,
    spreadRadius: 7,
  );
}
