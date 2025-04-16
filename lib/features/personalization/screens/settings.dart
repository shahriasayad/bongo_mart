import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bongo_mart/common/widgets/texts/section_heading.dart';
import 'package:bongo_mart/features/authentication/screens/login/login.dart';
import 'package:bongo_mart/navigation_menu.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.put(NavigationController());
    final isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //-------------Header-------------//
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  //-------------Profile Setup-------------//

                  MyUserProfile(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            //-------------Body-------------//
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //-----Account Settings-----//
                  SectionHeading(title: 'Account Settings'),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    onTap: () => Get.to(() => const UserAddressesScreen()),
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set Shopping Delivery Address',
                  ),
                  SettingsMenuTile(
                    onTap: () => navigationController.selectedIndex.value = 2,
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add or remove products and move to checkout',
                  ),
                  SettingsMenuTile(
                    onTap: () => Get.to(() => const OrderScreen()),
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'View Your Order History',
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.bank,
                    title: 'My Payment',
                    subtitle: 'Manage Your Payment Methods',
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'Manage Your Coupons',
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Manage Your Notifications',
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.security_card,
                    title: 'Privacy and Security',
                    subtitle: 'Manage Your Privacy and Security',
                  ),
                  //-----App Settings-----//
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SettingsMenuTile(title: 'App Settings'),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to Cloud Firebase',
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set Recommendation Products Location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Enable Safe Mode',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingsMenuTile(
                    onTap: () {},
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set HD Image Quality',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),

                  //-----Logout Settings-----//
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SettingsMenuTile(title: 'Logout Settings'),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () => showCustomCupertinoDialog(
                              context: context,
                              title: 'Logout !!!',
                              content: 'Do You Want to Logout?',
                              confirmText: 'Yes',
                              cancelText: 'No',
                              onConfirm: () => Get.to(LoginScreen()),
                            ),
                        child: Text('Logout')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
