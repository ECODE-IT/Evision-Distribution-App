import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/center_content_card.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/models/po_model.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class GrnPage extends StatefulWidget {
  static const routeName = '/grn';
  final PoModel data;

  const GrnPage({required this.data, Key? key}) : super(key: key);

  @override
  State<GrnPage> createState() => _GrnPageState();
}

class _GrnPageState extends State<GrnPage> {
  final TextEditingController _poNumberController = TextEditingController();


  @override
  void initState() {
    _poNumberController.text = widget.data.poName!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: CenterContentCard(
        title: 'GRN',
        content: Column(
          children: [
            Container(
              height: (displayHeight(context) * 0.7) - 80.0,
              padding: const EdgeInsets.only(top: 25.0),
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'PO Number',
                              style: TextStyle(
                                  fontSize: 10.0, color: Color(0xff797979)),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: displayWidth(context) * 0.5,
                              child: TextField(
                                controller: _poNumberController,
                                decoration: AppTheme.mainTextInputDecoration,
                                style: AppTheme.mainTextInputStyle,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            const Text(
                              'Other fields',
                              style: TextStyle(
                                  fontSize: 10.0, color: Color(0xff797979)),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: displayWidth(context) * 0.5,
                              child: TextField(
                                decoration: AppTheme.mainTextInputDecoration,
                                style: AppTheme.mainTextInputStyle,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      pageButton: const AppButton(
        displayText: 'Approve',
        height: mainAppButtonHeight,
        width: 170.0,
      ),
    );
  }
}
