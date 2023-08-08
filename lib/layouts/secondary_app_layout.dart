import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class SecondaryAppLayout extends StatelessWidget {
  final String title;
  final Widget content;
  final Widget button;

  const SecondaryAppLayout(
      this.title, this.content, this.button, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 17.0, vertical: displayHeight(context) * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 29.0,
                        color: secondaryTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      width: 41.0,
                      child: Divider(
                        color: secondaryTextColor,
                        thickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.05),
              Expanded(
                child: Container(
                  decoration: AppTheme.containerBoxDecoration,
                  child: content,
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.05),
              Align(
                alignment: Alignment.centerRight,
                child: button,
              )
            ],
          ),
        ),
      ),
    );
  }
}
