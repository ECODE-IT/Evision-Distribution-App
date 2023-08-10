import 'package:flutter/material.dart';

import 'app_bar.dart';

class DefaultBackground extends StatefulWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final Widget widget;
  final CallbackAction? callbackAction;

  const DefaultBackground(
      {super.key,
      this.icon,
      this.callbackAction,
      required this.title,
      required this.subtitle,
      required this.widget});

  @override
  State<DefaultBackground> createState() => _DefaultBackgroundState();
}

class _DefaultBackgroundState extends State<DefaultBackground> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          ],
        ),
      ),
    );
  }
}
