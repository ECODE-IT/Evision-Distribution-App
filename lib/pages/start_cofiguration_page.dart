import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:evision_distribution_app/layouts/secondary_app_layout.dart';
import 'package:flutter/material.dart';

class StartConfigurationPage extends StatelessWidget {
  const StartConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryAppLayout(
      'Select Your Company',
      ListView.builder(
        padding: const EdgeInsets.only(top: 5.0),
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const SizedBox(width: 14.0),
                    CircleAvatar(
                      backgroundColor: const Color(0xffF2F2F2),
                      child: Text(companies[index].companyName![0]),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companies[index].companyName!,
                          style: const TextStyle(fontSize: 15.0),
                        ),
                        Text(
                          'Distributor Code${companies[index].distributorCode!}',
                          style: const TextStyle(fontSize: 9.0),
                        ),
                        Text(
                          'Customer Code${companies[index].customerCode!}',
                          style: const TextStyle(fontSize: 7.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 0.5,
              )
            ],
          );
        },
      ),
      const AppButton(
        displayText: 'Start Configuration',
        height: mainAppButtonHeight,
        width: mainAppButtonWidth,
        route: '/company_configuration',
      ),
    );
  }
}
