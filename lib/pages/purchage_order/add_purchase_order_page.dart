import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class AddPurchaseOrderPage extends StatefulWidget {
  const AddPurchaseOrderPage({Key? key}) : super(key: key);

  @override
  State<AddPurchaseOrderPage> createState() => _AddPurchaseOrderPageState();
}

TextStyle _listItemTextStyle =
    AppTheme.secondaryTextStyle.copyWith(color: const Color(0xff5A5A5A));
TextStyle _expandedListItemTextStyle = const TextStyle(
    fontSize: 8.0, fontWeight: FontWeight.w500, color: secondaryTextColor);

class _AddPurchaseOrderPageState extends State<AddPurchaseOrderPage> {
  final TextEditingController _poNumberController = TextEditingController();
  String dropdownValue = list.first;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return DefaultBackground(
      title: "John Keells Company",
      subtitle: "Distributor Code : D569",
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: displayHeight(context) * 0.7,
              decoration: AppTheme.containerBoxDecoration.copyWith(
                borderRadius: const BorderRadius.all(Radius.circular(12.0)),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Purchase Order',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: secondaryTextColor,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 5.0,
                    ),
                    child: Divider(
                      color: mainAppButtonBackgroundColor,
                      height: 1.0,
                    ),
                  ),
                  Container(
                    height: (displayHeight(context) * 0.7) - 80.0,
                    padding: const EdgeInsets.only(top: 25.0),
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 50.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'PO Number',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  SizedBox(
                                    width: displayWidth(context) * 0.5,
                                    child: TextField(
                                      decoration:
                                          AppTheme.mainTextInputDecoration,
                                      style: AppTheme.mainTextInputStyle,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'Supplier Name',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
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
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        elevation: 16,
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                          setState(() {
                                            dropdownValue = value!;
                                          });
                                        },
                                        items: list
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Center(
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Lato',
                                                  color: secondaryTextColor,
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
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'Source Lct',
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
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
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        elevation: 16,
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                          setState(() {
                                            dropdownValue = value!;
                                          });
                                        },
                                        items: list
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Center(
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Lato',
                                                  color: secondaryTextColor,
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
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'Destination Lct',
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        color: secondaryTextColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
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
                                        icon: const Icon(
                                            Icons.keyboard_arrow_down),
                                        elevation: 16,
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                          setState(() {
                                            dropdownValue = value!;
                                          });
                                        },
                                        items: list
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Center(
                                              child: Text(
                                                value,
                                                style: const TextStyle(
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'Lato',
                                                  color: secondaryTextColor,
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Item List',
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: secondaryTextColor,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'SHOW ALL',
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      color: secondaryTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                    child: Checkbox(
                                      checkColor: Colors.white,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              width: displayWidth(context) * 0.2,
                              height: 19.0,
                              decoration: BoxDecoration(
                                color: const Color(0xffE4E4E4),
                                border: Border.all(
                                  color: Colors.grey[400]!,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  isExpanded: true,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 19.0,
                                  ),
                                  elevation: 16,
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Lato',
                                            color: secondaryTextColor,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              width: displayWidth(context) * 0.2,
                              height: 19.0,
                              decoration: BoxDecoration(
                                color: const Color(0xffE4E4E4),
                                border: Border.all(
                                  color: Colors.grey[400]!,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  isExpanded: true,
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 19.0,
                                  ),
                                  elevation: 16,
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Center(
                                        child: Text(
                                          value,
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Lato',
                                            color: secondaryTextColor,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: displayWidth(context) * 0.3,
                              height: 19.0,
                              child: TextField(
                                textAlign: TextAlign.left,
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
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
                        const SizedBox(height: 5.0),
                        Divider(
                          color: Colors.grey[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Color(0xffF2F2F2),
                                child: Text(''),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                width: displayWidth(context) * 0.4,
                                height: 24.0,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey[400]!,
                                  ),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: dropdownValue,
                                    isExpanded: true,
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                      size: 19.0,
                                    ),
                                    elevation: 16,
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Center(
                                          child: Text(
                                            value,
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Lato',
                                              color: secondaryTextColor,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'QTY',
                                    style: TextStyle(
                                      fontSize: 8.0,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      color: secondaryTextColor,
                                    ),
                                  ),
                                  const SizedBox(width: 5.0),
                                  SizedBox(
                                    width: displayWidth(context) * 0.2,
                                    child: TextField(
                                      decoration:
                                          AppTheme.mainTextInputDecoration,
                                      style: AppTheme.mainTextInputStyle,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Divider(
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
