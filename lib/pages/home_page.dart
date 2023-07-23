
import 'package:evision_distribution_app/components/default_background.dart';
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
      widget: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/company');
        },
        child: const Text('company'),
      ),
    );
  }
}
