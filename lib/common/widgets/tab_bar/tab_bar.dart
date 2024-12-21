import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TabBar extends StatelessWidget implements PreferredSizeWidget {
  const TabBar({
    super.key,
    required this.tabs,
    required isScrollable,
    required Color indicatorColor,
    required Color unselectedLabelColor,
    required Color labelColor,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
        labelColor: dark ? TColors.white : TColors.primary,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
