import 'package:evision_distribution_app/app_theme.dart';
import 'package:flutter/material.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar(
      {super.key,
      this.icon,
      this.callbackAction,
      required this.title,
      required this.subTitle});

  final String title;
  final String subTitle;
  final IconData? icon;
  final CallbackAction? callbackAction;

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
              icon == null
                  ? Visibility(
                      visible: Navigator.of(context).canPop() && icon == null,
                      child: InkWell(
                        child: const Icon(Icons.arrow_back_rounded),
                        onTap: () => {Navigator.pop(context)},
                      ),
                    )
                  : Visibility(
                      visible: icon != null,
                      child: InkWell(
                        child: Icon(icon),
                        onTap: () => {callbackAction ?? Navigator.pop(context)},
                      ),
                    ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: AppTheme.titleStyle,
                      ),
                      Text(
                        subTitle,
                        style: AppTheme.subtitleStyle,
                      ),
                    ],
                  ),
                  const SizedBox(width: 8.0),
                  const Image(
                    image: AssetImage('assets/images/elephant_house.png'),
                    height: 40.0,
                    width: 40.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
