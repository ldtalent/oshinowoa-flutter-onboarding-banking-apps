import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_banking_app/constants/app_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.buttonBackgroundColor,
    required this.pressed,
  }) : super(key: key);

  final String label;
  final Color buttonBackgroundColor;
  final Function() pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressed,
      child: Text(
        label,
        textAlign: TextAlign.left,
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: buttonBackgroundColor,
        primary: Colors.white,
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding.h,
        ),
      ),
    );
  }
}
