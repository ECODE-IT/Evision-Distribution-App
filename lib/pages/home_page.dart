import 'package:evision_distribution_app/components/app_bar.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/components/navigation_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
    );
  }
}
