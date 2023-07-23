import 'package:evision_distribution_app/components/default_background.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultBackground(title: 'Company', subtitle: 'John Keells', widget: Center(child: Text('company page'),),);
  }
}


