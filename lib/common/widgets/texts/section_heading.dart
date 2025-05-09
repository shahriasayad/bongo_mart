import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
    this.showViewAll = false,
    this.titleColor,
  });
  final String title;
  final String buttonTitle;
  final void Function()? onPressed;
  final bool showViewAll;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: titleColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showViewAll)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: titleColor),
            ),
          ),
      ],
    );
  }
}
