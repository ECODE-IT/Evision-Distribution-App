import 'package:dropdown_search/dropdown_search.dart';
import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/components/app_button.dart';
import 'package:evision_distribution_app/components/default_background.dart';
import 'package:evision_distribution_app/components/dropdown_widget.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:evision_distribution_app/models/grn_model.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class AddPurchaseOrderPage extends StatefulWidget {
  const AddPurchaseOrderPage({Key? key}) : super(key: key);

  @override
  State<AddPurchaseOrderPage> createState() => _AddPurchaseOrderPageState();
}

class _AddPurchaseOrderPageState extends State<AddPurchaseOrderPage> {
  final TextEditingController _poNumberController = TextEditingController();
  String dropdownValue = list.first;
  GrnModel? dropdownValueOfProducts;
  bool isChecked = false;
  GrnModel? _selectedGrn;
  List<GrnModel> productsToAdd = [];

  final TextStyle _iconLeterTextStyle = AppTheme.appButtonDisplayTextStyle.copyWith(fontSize: 12.0);

  final TextStyle _dropdownItemTextStyle = AppTheme.secondaryTextStyle.copyWith(
    fontSize: 10.0,
    color: const Color(0xff5A5A5A),
  );

  final TextStyle _dropdownItemSubTextStyle = AppTheme.secondaryTextStyle.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 10.0,
    color: secondaryTextColor,
  );

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
              height: displayHeight(context) * 0.75,
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
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'PO Number',
                                      style: TextStyle(fontSize: 10.0, color: secondaryTextColor),
                                    ),
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
                              const SizedBox(height: 15.0),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'Supplier Name',
                                      style: TextStyle(fontSize: 10.0, color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  DropdownWidget(
                                    width: displayWidth(context) * 0.5,
                                    height: 24.0,
                                    dropdownValue: dropdownValue,
                                    function: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                              const SizedBox(height: 15.0),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 80.0,
                                    child: Text(
                                      'Source Lct',
                                      style: TextStyle(fontSize: 10.0, color: secondaryTextColor),
                                    ),
                                  ),
                                  const SizedBox(width: 20.0),
                                  DropdownWidget(
                                    width: displayWidth(context) * 0.5,
                                    height: 24.0,
                                    dropdownValue: dropdownValue,
                                    function: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                  )
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
                                  DropdownWidget(
                                    width: displayWidth(context) * 0.5,
                                    height: 24.0,
                                    dropdownValue: dropdownValue,
                                    function: (String? value) {
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: const Color(0xffF7F7F7),
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Item List',
                                style: TextStyle(fontSize: 11.0, color: secondaryTextColor, fontFamily: 'Lato', fontWeight: FontWeight.w700),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                          ),
                          child: Column(
                            children: [
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
                                      width: displayWidth(context) * 0.5,
                                      // height: 30.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey[400]!,
                                        ),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      child: DropdownSearch<GrnModel>(
                                        popupProps: PopupProps.modalBottomSheet(
                                          // showSelectedItems: true,
                                          itemBuilder: _dropdownListItem,
                                          showSearchBox: true,
                                        ),
                                        itemAsString: (GrnModel g) => g.name,
                                        items: grnList,
                                        dropdownDecoratorProps: const DropDownDecoratorProps(
                                          dropdownSearchDecoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.fromLTRB(20, 3, 20, 3),
                                            isDense: true,
                                            labelText: "Select Product",
                                            labelStyle: TextStyle(fontSize: 12.0),
                                          ),
                                        ),
                                        onChanged: (GrnModel? value) {
                                          setState(() {
                                            productsToAdd.add(value!);
                                            _selectedGrn = value!;
                                          });
                                        },
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
                                          width: displayWidth(context) * 0.13,
                                          child: TextField(
                                            decoration: AppTheme.mainTextInputDecoration.copyWith(
                                              contentPadding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                                            ),
                                            style: AppTheme.mainTextInputStyle,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 3.0),
                              Divider(
                                color: Colors.grey[300],
                              ),
                              productsToAdd.isNotEmpty
                                  ? SizedBox(
                                      height: displayHeight(context) * 0.15,
                                      child: ListView.builder(
                                          itemCount: productsToAdd.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                  child: Row(
                                                    children: [
                                                      const SizedBox(width: 5.0),
                                                      CircleAvatar(
                                                        backgroundColor: const Color(0xffF2F2F2),
                                                        child: Text(
                                                          productsToAdd[index].serialNumber[0],
                                                          style: _iconLeterTextStyle,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 8.0),
                                                      SizedBox(
                                                        width: 54.0,
                                                        child: Text(
                                                          productsToAdd[index].serialNumber,
                                                          style: _dropdownItemTextStyle.copyWith(fontSize: 12.0),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 8.0),
                                                      const SizedBox(
                                                        height: 56.0,
                                                        child: VerticalDivider(
                                                          color: Color(0xffD9D9D9),
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      const SizedBox(width: 8.0),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          SizedBox(
                                                            width: 200.0,
                                                            child: FittedBox(
                                                              fit: BoxFit.cover,
                                                              child: Text(
                                                                productsToAdd[index].name,
                                                                style: _dropdownItemTextStyle.copyWith(fontSize: 12.0),
                                                                textAlign: TextAlign.start,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                'Batch No - 00102',
                                                                style: _dropdownItemSubTextStyle.copyWith(fontSize: 10.0),
                                                              ),
                                                              const SizedBox(width: 5.0),
                                                              Text(
                                                                'Price - Rs.128.50',
                                                                style: _dropdownItemSubTextStyle.copyWith(fontSize: 10.0),
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(height: 8.0),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              Container(
                                                                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                                                width: 70.0,
                                                                height: 18.0,
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
                                                                      Icons.keyboard_arrow_down,
                                                                      size: 15.0,
                                                                    ),
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
                                                                              fontSize: 10.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                              const SizedBox(
                                                                width: 15.0,
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
                                                                    width: 35.0,
                                                                    child: TextField(
                                                                      decoration: AppTheme.mainTextInputDecoration.copyWith(
                                                                        contentPadding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                                                                      ),
                                                                      style: AppTheme.mainTextInputStyle,
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 5.0),
                                                Divider(
                                                  color: Colors.grey[300],
                                                ),
                                              ],
                                            );
                                          }),
                                    )
                                  : const SizedBox(),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AppButton(
                        displayText: 'Add Product',
                        height: 30.0,
                        width: mainAppButtonWidth,
                      ),
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

  Widget _dropdownListItem(BuildContext context, GrnModel item, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50.0,
                child: Text(
                  item.serialNumber,
                  style: _dropdownItemTextStyle,
                ),
              ),
              Text(
                item.name,
                style: _dropdownItemTextStyle,
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 50.0,
              ),
              Text(
                'Batch No - 00102',
                style: _dropdownItemSubTextStyle,
              ),
              const SizedBox(
                width: 40.0,
              ),
              Text(
                'Price - Rs.128.50',
                style: _dropdownItemSubTextStyle,
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
