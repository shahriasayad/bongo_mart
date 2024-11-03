import 'package:bongo_mart/utils/constants/colors.dart';
import 'package:bongo_mart/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            // const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: '${TTexts.iAgreeTo}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10)),
                    TextSpan(
                      text: '${TTexts.privacyPolicy} ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                          fontSizeFactor: 0.9,
                          color: dark
                              ? TColors.white
                              : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? TColors.white
                              : TColors.primary),
                    ),
                    TextSpan(
                        text: '${TTexts.and}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10)),
                    TextSpan(
                      text: '${TTexts.termsOfUse}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                          fontSizeFactor: 0.9,
                          color: dark
                              ? TColors.white
                              : TColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: dark
                              ? TColors.white
                              : TColors.primary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
