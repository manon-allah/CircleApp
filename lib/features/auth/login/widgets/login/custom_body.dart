import 'package:circle_app/features/auth/login/widgets/login/custom_enter_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/style.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('أهلا بك ..!', style: TextStyles.font28Bold),
            SizedBox(height: 6.h),
            Text(
              'سجل الدخول في التطبيق و اطلب الآن ..',
              style: TextStyles.font14Normal,
            ),
            SizedBox(height: 24.h),
            CustomEnterPhone(),
          ],
        ),
      ),
    );
  }
}
