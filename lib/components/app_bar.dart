import 'package:evision_distribution_app/app_theme.dart';
import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        decoration: AppTheme.customizedCardDecoration,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(child: const Icon(Icons.menu),onTap: () => {Scaffold.of(context).openDrawer()},),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(title,style: AppTheme.titleStyle,),
                  Text(subTitle, style: AppTheme.subtitleStyle,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
