// ignore_for_file: prefer_const_constructors
// TODO

import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/center_content_card.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/components/dropdown_widget.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class AddLoadingPage extends StatefulWidget {
  const AddLoadingPage({Key? key}) : super(key: key);

  @override
  State<AddLoadingPage> createState() => _AddLoadingPageState();
}

TextStyle _listItemTextStyle = AppTheme.secondaryTextStyle.copyWith(color: const Color(0xff5A5A5A), fontSize: 12.0);

TextStyle _listItemSecondaryTextStyle =
    AppTheme.secondaryTextStyle.copyWith(color: const Color(0xff797979), fontWeight: FontWeight.w500, fontSize: 8.0);

class _AddLoadingPageState extends State<AddLoadingPage> {
  final TextEditingController _poNumberController = TextEditingController();
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: CenterContentCard(
        title: 'Loading',
        content: Column(
          children: [
            SizedBox(
              height: (displayHeight(context) * 0.7) - 80.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80.0,
                              child: const Text(
                                'Loading Number',
                                style: TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            SizedBox(
                              width: displayWidth(context) * 0.5,
                              child: TextField(
                                controller: _poNumberController,
                                decoration: AppTheme.mainTextInputDecoration.copyWith(
                                  contentPadding: const EdgeInsets.fromLTRB(20, 5, 20, 3),
                                ),
                                style: const TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato',
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            SizedBox(
                              width: 80.0,
                              child: const Text(
                                'Source Lct',
                                style: TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              width: displayWidth(context) * 0.5,
                              height: 24.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400]!,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  elevation: 16,
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Lato',
                                            color: Color(0xff797979),
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          children: [
                            SizedBox(
                              width: 80.0,
                              child: const Text(
                                'Destination Lct',
                                style: TextStyle(fontSize: 10.0, color: Color(0xff797979)),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              width: displayWidth(context) * 0.5,
                              height: 24.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[400]!,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  elevation: 16,
                                  onChanged: (String? value) {
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Lato',
                                            color: Color(0xff797979),
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffF7F7F7),
                    width: displayWidth(context),
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
                    child: const Text(
                      'Item List',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: secondaryTextColor,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DropdownWidget(
                        width: displayWidth(context) * 0.22,
                        height: 19.0,
                        backgroundColor: const Color(0xffE4E4E4),
                        dropdownValue: dropdownValue,
                        function: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                      DropdownWidget(
                        width: displayWidth(context) * 0.22,
                        height: 19.0,
                        backgroundColor: const Color(0xffE4E4E4),
                        dropdownValue: dropdownValue,
                        function: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: displayWidth(context) * 0.35,
                        height: 19.0,
                        child: TextField(
                          textAlign: TextAlign.left,
                          cursorHeight: 12.0,
                          onChanged: (value) {
                            setState(() {
                              // _searchString = value;
                            });
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Search Product',
                            isDense: true,
                            contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            hintStyle: const TextStyle(
                              color: Color(0xffBFBCBC),
                              fontSize: 12.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xffC9C5C5),
                              ),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.green,
                              ),
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            suffixIcon: IconButton(
                              padding: EdgeInsets.zero,
                              icon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 12.0,
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Divider(color: Colors.grey[300]),
                  Expanded(
                    child: ListView.builder(
                      itemCount: itemList.length,
                      itemBuilder: (context, index) {
                        var item = itemList[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color(0xffF2F2F2),
                                        child: item.qty.text.isEmpty
                                            ? Text(
                                                item.serialNumber[0],
                                                style: _listItemTextStyle.copyWith(fontSize: 12.0),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Color(0xff1ED291),
                                              ),
                                      ),
                                      const SizedBox(width: 10.0),
                                      Text(
                                        item.serialNumber,
                                        style: _listItemTextStyle.copyWith(fontSize: 11.0),
                                      ),
                                      const SizedBox(
                                        height: 24.0,
                                        child: VerticalDivider(
                                          color: Color(0xffD9D9D9),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: 140.0,
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                item.name,
                                                style: _listItemTextStyle,
                                                textAlign: TextAlign.start,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                'Batch No - 00102',
                                                style: _listItemSecondaryTextStyle,
                                              ),
                                              const SizedBox(width: 5.0),
                                              Text(
                                                'Price - Rs.128.50',
                                                style: _listItemSecondaryTextStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'QTY',
                                        style: TextStyle(
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 10.0,
                                          color: Color(0xff797979),
                                        ),
                                      ),
                                      const SizedBox(width: 5.0),
                                      SizedBox(
                                        width: 40.0,
                                        child: TextField(
                                          controller: item.qty,
                                          keyboardType: TextInputType.number,
                                          decoration: AppTheme.mainTextInputDecoration.copyWith(
                                            contentPadding: const EdgeInsets.fromLTRB(5, 1, 20, 5),
                                          ),
                                          style: AppTheme.mainTextInputStyle,
                                          onChanged: (String? value) {
                                            setState(() {});
                                          },
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Divider(color: Colors.grey[300]),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      pageButton: const AppButton(
        displayText: 'Add Loading',
        height: mainAppButtonHeight,
        width: 170.0,
      ),
      secondaryButton: TextButton(
        onPressed: () {},
        child: Text(
          'View',
          style: AppTheme.secondaryButtonDisplayTextStyle,
        ),
      ),
    );
  }
}
