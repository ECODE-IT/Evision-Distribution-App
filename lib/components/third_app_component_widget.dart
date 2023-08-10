import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class ThirdAppComponentWidget extends StatelessWidget {
  final String title;
  final Widget content;
  final Widget? button;

  const ThirdAppComponentWidget(this.title, this.content, this.button,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 29.0,
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const AppButton(displayText: 'Add GRN', height: 27.0)
                    ],
                  ),
                  const SizedBox(
                    width: 41.0,
                    child: Divider(
                      color: secondaryTextColor,
                      thickness: 2.0,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              child: content
            ),
            SizedBox(height: displayHeight(context) * 0.05),
            Align(
              alignment: Alignment.centerRight,
              child: button,
            )
          ],
        ),
      ),
    );
  }
}
