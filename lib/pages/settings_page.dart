import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/layouts/secondary_app_layout.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondaryAppLayout(
        'Settings',
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 12.0),
          child: ListView(
            children: [
              Text(
                'Change Details',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: secondaryTextColor,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(
                thickness: 0.5,
                color: mainAppButtonBackgroundColor,
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  const SizedBox(
                    width: 90.0,
                    child: Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  SizedBox(
                    width: displayWidth(context) * 0.5,
                    child: TextField(
                      decoration: AppTheme.mainTextInputDecoration,
                      style: AppTheme.mainTextInputStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  const SizedBox(
                    width: 90.0,
                    child: Text(
                      'New Password',
                      style:
                          TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  SizedBox(
                    width: displayWidth(context) * 0.5,
                    child: TextField(
                      decoration: AppTheme.mainTextInputDecoration,
                      style: AppTheme.mainTextInputStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  const SizedBox(
                    width: 90.0,
                    child: Text(
                      'Confirm Password',
                      style:
                          TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  SizedBox(
                    width: displayWidth(context) * 0.5,
                    child: TextField(
                      decoration: AppTheme.mainTextInputDecoration,
                      style: AppTheme.mainTextInputStyle,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              const Align(
                alignment: Alignment.centerRight,
                child: AppButton(
                  displayText: 'Submit',
                  height: mainAppButtonHeight,
                  width: mainAppButtonWidth,
                  route: '/home',
                ),
              ),
            ],
          ),
        ),
        null);
  }
}
