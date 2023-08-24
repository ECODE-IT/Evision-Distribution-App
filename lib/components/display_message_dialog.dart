import 'package:evision_distribution_app/app_theme.dart';
import 'package:flutter/material.dart';

class DisplayMessageDialog extends StatelessWidget {
  final IconData iconName;
  final String message;
  final bool displayAction;

  const DisplayMessageDialog({
    Key? key,
    required this.iconName,
    required this.message,
    this.displayAction = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(
        iconName,
        color: primaryColor,
        size: 40.0,
      ),
      content: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20),
      ),
      actions: [
        displayAction == true
            ? ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),
                child: const Text(
                  'Okay',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
