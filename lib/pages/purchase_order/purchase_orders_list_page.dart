import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/components/third_app_component_widget.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:flutter/material.dart';

class PurchaseOrdersListPage extends StatelessWidget {
  const PurchaseOrdersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      title: 'John Keels Company',
      subtitle: 'Distributor Code : D569',
      widget: ThirdAppComponentWidget(
        title: 'GRN',
        content: Container(
          decoration: AppTheme.containerBoxDecoration,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 5.0),
            itemCount: poList.length,
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
        topButton: const AppButton(
          displayText: 'Add PO',
          height: 27.0,
          route: '/add_purchase_order',
        ),
      ),
    );
  }
}
