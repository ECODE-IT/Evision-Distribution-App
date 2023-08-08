import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextStyle _inputLabelTextStyle = GoogleFonts.lato(
    textStyle: const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w400,
      color: mainAppButtonBackgroundColor,
    ),
  );

  final InputDecoration _inputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    isDense: true,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: mainAppButtonBackgroundColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: mainAppButtonBackgroundColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.red, width: 2.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.red, width: 2.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF3F3F3),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 17.0, vertical: displayHeight(context) * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Evision Microsystems',
                    style: TextStyle(
                      fontSize: 29.0,
                      color: secondaryTextColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 41.0,
                      child: Divider(
                        color: secondaryTextColor,
                        thickness: 2.0,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Text(
                      'Distributor Code : D569',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 9.0,
                          fontWeight: FontWeight.w500,
                          color: secondaryTextColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: displayHeight(context) * 0.05),
                Container(
                  decoration: AppTheme.containerBoxDecoration,
                  width: displayWidth(context),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/images/evision.png'),
                        height: 69.0,
                        width: 69.0,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            color: mainAppButtonBackgroundColor,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff797979),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40.0),
                      TextFormField(
                        decoration: _inputDecoration.copyWith(
                          label: Text('Email Address',
                              style: _inputLabelTextStyle),
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: _inputDecoration.copyWith(
                          label: Text('Password', style: _inputLabelTextStyle),
                        ),
                      ),
                      const SizedBox(height: 35.0),
                      const AppButton(
                        displayText: 'SIGN IN',
                        height: mainAppButtonHeight,
                        width: mainAppButtonWidth,
                        route: '/dashboard',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
