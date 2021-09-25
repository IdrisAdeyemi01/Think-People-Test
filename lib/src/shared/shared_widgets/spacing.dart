import 'package:flutter/material.dart';

class AppSpacing extends StatelessWidget {
  final double height;
  final double width;

  AppSpacing.height(this.height) : width = 0;

  AppSpacing.tinyHeight() : this.height(4);
  AppSpacing.smallHeight() : this.height(8);
  AppSpacing.mediumHeight() : this.height(16);
  AppSpacing.bigHeight() : this.height(24);
  AppSpacing.largeHeight() : this.height(32);

  AppSpacing.width(this.width) : height = 0;

  AppSpacing.tinyWidth() : this.width(4);
  AppSpacing.smallWidth() : this.width(8);
  AppSpacing.mediumWidth() : this.width(16);
  AppSpacing.bigWidth() : this.width(24);
  AppSpacing.largeWidth() : this.width(32);

  AppSpacing.empty()
      : width = 0,
        height = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}
