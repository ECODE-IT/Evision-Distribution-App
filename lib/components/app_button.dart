import 'package:evision_distribution_app/app_theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? route;
  final String displayText;
  final TextStyle? displayTextStyle;
  final double height;
  final double? width;
  final VoidCallback? voidCallback;
  final Color? color;
  final IconData? icon;

  const AppButton(
      {this.route,
      required this.displayText,
      this.displayTextStyle,
      required this.height,
      this.width,
      this.voidCallback,
      this.color,
      this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconText = Text(
      displayText,
      style: displayTextStyle ?? AppTheme.appButtonDisplayTextStyle,
    );

    return SizedBox(
      height: height,
      width: width,
      child: FilledButton(
        style: color == null
            ? AppTheme.appButtonStyle
            : AppTheme.appButtonStyle.copyWith(
                backgroundColor: MaterialStatePropertyAll(color),
              ),
        onPressed: () {
          if (route != null) {
            Navigator.pushNamed(context, route!);
          }
          voidCallback;
        },
        child: icon == null
            ? iconText
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(icon), const SizedBox(width: 10.0), iconText],
              ),
      ),
    );
  }
}
