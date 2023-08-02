import 'package:evision_distribution_app/library/globals.dart';
import 'package:evision_distribution_app/library/size_helpers.dart';
import 'package:evision_distribution_app/models/company_model.dart';
import 'package:flutter/material.dart';

List<CompanyModel> companies = [
  CompanyModel('John Keels Company', 'D569', 'C232932DFDFS'),
  CompanyModel('Baurs LLC', 'D569', 'C232932DFDFS')
];

class CompanySelectionPage extends StatelessWidget {
  const CompanySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 17.0, vertical: displayHeight(context) * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Your Company',
                      style: TextStyle(
                        fontSize: 29.0,
                        color: secondaryTextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 41.0,
                      child: Divider(
                        color: secondaryTextColor,
                        thickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.05),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 13,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ListView.builder(
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
                ),
              ),
              SizedBox(height: displayHeight(context) * 0.05),
              Align(
                alignment: Alignment.centerRight,
                child: FilledButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1ED291),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Start Configuration',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
