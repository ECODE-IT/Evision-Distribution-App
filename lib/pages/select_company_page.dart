import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCompanyPage extends StatelessWidget {
  const SelectCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: [
              Container(
                height: 37.0,
                decoration: const BoxDecoration(
                    color: mainAppButtonBackgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0))),
                child: const Center(
                  child: Text(
                    'Add Company',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Select Company',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff777676),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: companies.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 71.0,
                      margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 5.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                companies[index].companyName!,
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Text(
                                companies[index].distributorCode!,
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                    fontSize: 9.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff797979),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Image(
                            image: AssetImage(companies[index].imagePath ?? ''),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 15.0),
              const AppButton(
                displayText: 'Add Company',
                height: tertiaryAppButtonHeight,
                width: tertiaryAppButtonWidth,
                icon: Icons.control_point,
              )
            ],
          ),
        ),
      ),
    );
  }
}
