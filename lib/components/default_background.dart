import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'navigation_drawer.dart';

class DefaultBackground extends StatefulWidget {
  final String title;
  final String subtitle;

  const DefaultBackground({super.key,required this.title, required this.subtitle});

  @override
  State<DefaultBackground> createState() => _DefaultBackgroundState();
}

class _DefaultBackgroundState extends State<DefaultBackground> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomizedNavigationDrawer(),
        body: Column(
          children: [
            CustomizedAppBar(title: widget.title, subTitle: widget.subtitle)
          ],
        ),
      ),
    );
  }
}
