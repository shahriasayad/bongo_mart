import 'package:bongo_mart/common/widgets/appbar/appbar.dart';
import 'package:bongo_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bongo_mart/common/widgets/icons/circular_icon.dart';
import 'package:bongo_mart/common/widgets/layouts/grid_layout.dart';
import 'package:bongo_mart/common/widgets/texts/section_heading.dart';
import 'package:bongo_mart/features/shop/screens/brand/all_brand.dart';
import 'package:bongo_mart/features/shop/screens/home/widgets/category_tab.dart';
import 'package:bongo_mart/features/shop/screens/store/widgets/brand_card.dart';
import 'package:bongo_mart/navigation_menu.dart';
import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/sizes.dart';
import 'package:bongo_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    NavigationController navigationController = Get.put(NavigationController());
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CircularFavoriteIcon(
              icon: Iconsax.shop,
              width: 40,
              height: 40,
              color: isDark ? TColors.light : TColors.dark,
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: isDark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      //Search Bar
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),
                      SearchContainer(
                        text: 'Search in Store',
                        icon: Iconsax.search_normal,
                        showBackground: false,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      //Featured Brands
                      SectionHeading(
                        title: 'Featured Brands',
                        showViewAll: true,
                        onPressed: () {
                          Get.to(() => AllBrandScreen());
                        },
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),
                      GridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return BrandCard();
                        },
                      ),
                    ],
                  ),
                ),
                // Tabs Bar
                bottom: TabBar(
                  isScrollable: true, // Allows the tabs to scroll horizontally
                  tabs: [
                    Tab(
                      child: Text(
                        'Sports',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Furniture',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Electronics',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Clothing',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Others',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Mobile',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
