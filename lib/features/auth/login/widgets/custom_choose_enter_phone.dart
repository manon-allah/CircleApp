import 'package:circle_app/core/theming/colors.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChooseEnterPhone extends StatefulWidget {
  const CustomChooseEnterPhone({super.key});

  @override
  State<CustomChooseEnterPhone> createState() => _CustomChooseEnterPhoneState();
}

class _CustomChooseEnterPhoneState extends State<CustomChooseEnterPhone> {
  Country selectedCountry = Country.parse('EG');
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showCountryPicker(
              context: context,
              showPhoneCode: false,
              countryListTheme: CountryListThemeData(
                flagSize: 25,
                textStyle: TextStyle(fontSize: 14.sp),
                bottomSheetHeight: 600,
              ),
              onSelect: (Country country) {
                setState(() {
                  selectedCountry = country;
                });
              },
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      selectedCountry.flagEmoji,
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    SizedBox(width: 5.5.w),
                    Text(
                      selectedCountry.name,
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
                Icon(Icons.arrow_drop_down, color: ColorsApp.mainColor),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.h),
        TextFormField(
          controller: phoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.phone, size: 26.w),
            hintText: 'رقم الجوال',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.clear();
    phoneController.dispose();
  }
}
