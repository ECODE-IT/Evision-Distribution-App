import 'package:flutter/material.dart';

import 'app_bar.dart';

class DefaultBackground extends StatefulWidget {
  final String title;
  final String subtitle;
  final Widget widget;

  const DefaultBackground({super.key,required this.title, required this.subtitle, required this.widget});

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
            CustomizedAppBar(title: widget.title, subTitle: widget.subtitle),
            Container(
              child: widget.widget,
            ),
          ],
        ),
      ),
    );
  }
}
