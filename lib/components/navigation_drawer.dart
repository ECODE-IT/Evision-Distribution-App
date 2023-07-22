import 'package:flutter/material.dart';

class CustomizedNavigationDrawer extends StatelessWidget {
  const CustomizedNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.75,
      color: Colors.blue,
    );
  }
}
