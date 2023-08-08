import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CenterContentCard extends StatelessWidget {
  final Widget content;
  final String title;

  const CenterContentCard(
      {required this.title, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 33.0,
            decoration: const BoxDecoration(
              color: mainAppButtonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: displayHeight(context) * 0.7,
            decoration: AppTheme.containerBoxDecoration.copyWith(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(11.0),
                bottomRight: Radius.circular(11.0),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0,
                  ),
                  child: Divider(
                    color: mainAppButtonBackgroundColor,
                    height: 1.0,
                  ),
                ),
                content
              ],
            ),
          )
        ],
      ),
    );
  }
}
