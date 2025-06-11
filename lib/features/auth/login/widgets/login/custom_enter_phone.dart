import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'custom_choose_enter_phone.dart';
import '../otp/custom_otp_bottom_sheet.dart';

class CustomEnterPhone extends StatefulWidget {
  const CustomEnterPhone({super.key});

  @override
  State<CustomEnterPhone> createState() => _CustomEnterPhoneState();
}

class _CustomEnterPhoneState extends State<CustomEnterPhone> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomChooseEnterPhone(
          phoneController: phoneController,
        ),
        SizedBox(height: 24.h),
        CustomButton(text: 'دخول', onPressed: onPressed,),
      ],
    );
  }

  void onPressed() {
    final phone = phoneController.text.trim();

    if (phone.isNotEmpty) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (_) => CustomOtpBottomSheet(phoneNumber: phone),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("من فضلك أدخل رقم الهاتف أولاً")),
      );
    }
  }
}
