import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';

class BackgroundWithBubble extends StatelessWidget {
  const BackgroundWithBubble({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -30,
              left: -80,
              child: CircleAvatar(
                radius: 120,
                backgroundColor: AppColors.lightGreenVariant.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: -100,
              left: 20,
              child: CircleAvatar(
                radius: 120,
                backgroundColor: AppColors.lightGreenVariant.withOpacity(0.5),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
