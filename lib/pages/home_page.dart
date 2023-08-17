import 'package:evision_distribution_app/components/app_home_grid_tile.dart';
import 'package:evision_distribution_app/components/center_content_card.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

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
      widget: CenterContentCard(
        title: 'Home',
        content: Container(
          height: (displayHeight(context) * 0.6) - 40.0,
          padding: const EdgeInsets.only(top: 25.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15.0,
            ),
            children: const [
              AppHomeGridTile(
                icon: Icons.dashboard,
                tileName: 'Dashboard',
                route: '/dashboard',
              ),
              AppHomeGridTile(
                icon: Icons.assignment,
                tileName: 'Purchase Order',
                route: '/purchase_order',
              ),
              AppHomeGridTile(
                icon: Icons.contact_support,
                tileName: 'Pending PO',
                route: '/pending_po',
              ),
              AppHomeGridTile(
                icon: Icons.description,
                tileName: 'GRN LIST',
                route: '/grn_list',
              ),
              AppHomeGridTile(
                icon: Icons.airport_shuttle,
                tileName: 'Loading',
                route: '',
              ),
              AppHomeGridTile(
                icon: Icons.airport_shuttle,
                tileName: 'UnLoading',
                route: '',
              ),
              AppHomeGridTile(
                icon: Icons.dashboard,
                tileName: 'Debit Note',
                route: '',
              ),
              AppHomeGridTile(
                icon: Icons.assessment,
                tileName: 'Reports',
                route: '',
              ),
              AppHomeGridTile(
                icon: Icons.settings,
                tileName: 'Setting',
                route: '/settings',
              )
            ],
          ),
        ),
      ),
    );
  }
}
