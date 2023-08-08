import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_theme.dart';

class AppHomeGridTile extends StatelessWidget {
  final IconData icon;
  final String tileName;

  const AppHomeGridTile(
      {required this.icon, required this.tileName, super.key});

  @override
  Widget build(BuildContext context) {
    double tileSize = (displayWidth(context) - 115) / 3;

    return GestureDetector(
      child: Column(
        children: [
          GridTile(
            child: Container(
              height: tileSize,
              width: tileSize,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 11,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                icon,
                size: 35.0,
                color: mainAppButtonBackgroundColor,
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            tileName,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: secondaryTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
