import 'package:circle_app/core/helpers/extension.dart';
import 'package:circle_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import 'widgets/custom_text_button.dart';

class FisrtPage extends StatelessWidget {
  const FisrtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextButton(
              backgroundColor: ColorsApp.mainColor,
              text: 'سجل الدخول',
              onPressed: () {
                context.pushNamed(Routes.logIn);
              },
            ),
            SizedBox(height: 10.h),
            CustomTextButton(
              backgroundColor: ColorsApp.signColor,
              text: 'انشاء حساب',
              onPressed: () {
                context.pushNamed(Routes.signUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
