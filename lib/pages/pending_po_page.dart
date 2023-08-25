import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/components/third_app_component_widget.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:flutter/material.dart';

class PendingPoPage extends StatelessWidget {
  const PendingPoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      icon: Icons.home,
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: ThirdAppComponentWidget(
        title: 'Pending PO',
        content: Container(
          decoration: AppTheme.containerBoxDecoration,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 5.0),
            itemCount: poList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  Navigator.of(context).pushNamed(
                    '/grn',
                    arguments: poList[index],
                  );
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: const Color(0xffF2F2F2),
                                child: Text(poList[index].poName![0]),
                              ),
                              const SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    poList[index].poName!,
                                    style: const TextStyle(fontSize: 15.0),
                                  ),
                                  Text(
                                    'Supplier Code${poList[index].supplierCode!}',
                                    style: const TextStyle(fontSize: 9.0),
                                  ),
                                  Text(
                                    'NO.of items${poList[index].noOfItems!}',
                                    style: const TextStyle(fontSize: 7.0),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AppButton(
                                displayText: 'Accept',
                                displayTextStyle: AppTheme
                                    .appButtonDisplayTextStyle
                                    .copyWith(fontSize: 9.0),
                                height: 20.0,
                              ),
                              const SizedBox(width: 5.0),
                              AppButton(
                                displayText: 'Reject',
                                displayTextStyle: AppTheme
                                    .appButtonDisplayTextStyle
                                    .copyWith(fontSize: 9.0),
                                color: const Color(0xffEE5353),
                                height: 20.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
