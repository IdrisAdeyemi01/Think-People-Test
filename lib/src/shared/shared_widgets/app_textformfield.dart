import 'package:flutter/material.dart';
import 'package:thinkpeople_test/src/contents/constants/colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    required this.label,
    required this.onChanged,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.obscureText,
  });
  final String label;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 10,
            top: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.lightGreenVariant,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          width: double.infinity,
          height: 25,
          child: Text(
            label,
            textAlign: TextAlign.left,
            style: textTheme.bodyText1!.copyWith(
              fontSize: 12,
            ),
          ),
        ),
        TextFormField(
          obscureText: obscureText ?? false,
          keyboardType: keyboardType ?? TextInputType.name,
          onChanged: onChanged,
          validator: validator,
          textInputAction: textInputAction ?? TextInputAction.next,
          cursorColor: AppColors.primaryColor,
          style: textTheme.bodyText2!.copyWith(
            letterSpacing: 0,
            wordSpacing: 0,
          ),
          cursorHeight: 20,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            alignLabelWithHint: true,
            fillColor: AppColors.lightGreenVariant,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
