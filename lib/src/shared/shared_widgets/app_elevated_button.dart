import 'package:flutter/material.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';
import 'package:thinkpeople_test/src/contents/utilities/screen_utility.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.buttonLabel,
    required this.onPressed,
  });

  final Function()? onPressed;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 15,
        shadowColor: AppColors.lightGreen,
        primary: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(
          ScreenUtil.screenWidth(context) * 0.9,
          60,
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonLabel),
    );
  }
}
