import 'package:evision_distribution_app/app_theme.dart';
import 'package:evision_distribution_app/data.dart';
import 'package:evision_distribution_app/size_helpers.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  final String dropdownValue;
  final Function(String?) function;
  final double width;
  final double height;
  final Color? backgroundColor;

  const DropdownWidget(
      {required this.width,
      required this.height,
      this.backgroundColor,
      required this.dropdownValue,
      required this.function,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
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
          onChanged: function,
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: secondaryTextColor,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
