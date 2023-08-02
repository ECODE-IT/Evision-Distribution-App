import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/layouts/secondary_app_layout.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class CompanyConfigurationPage extends StatefulWidget {
  const CompanyConfigurationPage({Key? key}) : super(key: key);

  @override
  State<CompanyConfigurationPage> createState() =>
      _CompanyConfigurationPageState();
}

class _CompanyConfigurationPageState extends State<CompanyConfigurationPage> {
  bool verified = false;

  @override
  Widget build(BuildContext context) {
    return SecondaryAppLayout(
      'Company Configuration',
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 12.0),
        child: ListView(
          children: [
            Row(
              children: [
                const Text(
                  'Distributor code',
                  style: TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  height: 23.0,
                  width: displayWidth(context) * 0.5,
                  child: TextField(
                    decoration: AppTheme.mainTextInputDecoration,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const Text(
                  'Company code',
                  style: TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                ),
                const SizedBox(width: 10.0),
                SizedBox(
                  height: 23.0,
                  width: displayWidth(context) * 0.5,
                  child: TextField(
                    decoration: AppTheme.mainTextInputDecoration,
                  ),
                )
              ],
            ),
            const SizedBox(height: 25.0),
            Align(
              child: AppButton(
                displayText: 'Verify',
                height: secondaryAppButtonHeight,
                width: 141.0,
                voidCallback: myMethod,
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 80.0,
                      child: Text(
                        'Verification code',
                        style:
                            TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      height: 23.0,
                      width: displayWidth(context) * 0.3,
                      child: TextField(
                        decoration: AppTheme.mainTextInputDecoration,
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        'VERIFY',
                        style: TextStyle(
                          fontSize: 11.0,
                          color: mainAppButtonBackgroundColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    const SizedBox(
                      width: 80.0,
                    ),
                    const SizedBox(width: 10.0),
                    SizedBox(
                      height: 23.0,
                      width: displayWidth(context) * 0.3,
                      child: const Text(
                        'Enter the 5 digit code',
                        style:
                            TextStyle(fontSize: 8.0, color: Color(0xff797979)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      const AppButton(
        displayText: 'Submit',
        height: mainAppButtonHeight,
        route: '/company_configuration',
      ),
    );
  }

  void myMethod() {}
}
