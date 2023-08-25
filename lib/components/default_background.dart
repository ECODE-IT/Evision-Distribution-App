import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class DefaultBackground extends StatefulWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final Widget widget;
  final CallbackAction? callbackAction;
  final Widget? pageButton;

  const DefaultBackground(
      {super.key, this.icon, this.callbackAction, required this.title, required this.subtitle, required this.widget, this.pageButton});

  @override
  State<DefaultBackground> createState() => _DefaultBackgroundState();
}

class _DefaultBackgroundState extends State<DefaultBackground> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: displayHeight(context),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                CustomizedAppBar(
                  icon: widget.icon,
                  callbackAction: widget.callbackAction,
                  title: widget.title,
                  subTitle: widget.subtitle,
                ),
                Container(
                  child: widget.widget,
                ),
                const SizedBox(height: 25.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: widget.pageButton ?? const SizedBox(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
