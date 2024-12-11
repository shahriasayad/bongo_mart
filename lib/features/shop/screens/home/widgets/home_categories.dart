import 'package:bongo_mart/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:bongo_mart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () {},
            textColor: Colors.white,
          );
        },
      ),
    );
  }
}
