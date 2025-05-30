import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/style.dart';

class CustomTextButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final void Function()? onPressed;
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 8.h),
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyles.font22Bold),
    );
  }
}
