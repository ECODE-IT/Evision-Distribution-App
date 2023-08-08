import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_home_grid_tile.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: Padding(
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
                  'Home',
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
              height: displayHeight(context) * 0.6,
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
                  Container(
                    height: (displayHeight(context) * 0.6) - 40.0,
                    padding: const EdgeInsets.only(top: 25.0),
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 15.0,
                      ),
                      children: const [
                        AppHomeGridTile(
                          icon: Icons.dashboard,
                          tileName: 'Dashboard',
                        ),
                        AppHomeGridTile(
                          icon: Icons.assignment,
                          tileName: 'Purchase Order',
                        ),
                        AppHomeGridTile(
                          icon: Icons.contact_support,
                          tileName: 'Pending PO',
                        ),
                        AppHomeGridTile(
                          icon: Icons.description,
                          tileName: 'GRN LIST',
                        ),
                        AppHomeGridTile(
                          icon: Icons.airport_shuttle,
                          tileName: 'Loading',
                        ),
                        AppHomeGridTile(
                          icon: Icons.airport_shuttle,
                          tileName: 'UnLoading',
                        ),
                        AppHomeGridTile(
                          icon: Icons.dashboard,
                          tileName: 'Debit Note',
                        ),
                        AppHomeGridTile(
                          icon: Icons.assessment,
                          tileName: 'Reports',
                        ),
                        AppHomeGridTile(
                          icon: Icons.settings,
                          tileName: 'Setting',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
