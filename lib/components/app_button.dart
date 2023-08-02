import 'package:evision_distribution_app/app_theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? route;
  final String displayText;
  final double height;
  final double? width;
  final VoidCallback? voidCallback;

  const AppButton(
      {this.route,
      required this.displayText,
      required this.height,
      this.width,
      this.voidCallback,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FilledButton(
        style: AppTheme.appButtonStyle,
        onPressed: () {
          if (route != null) {
            Navigator.pushNamed(context, route!);
          }
          voidCallback;
        },
        child: Text(
          displayText,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
