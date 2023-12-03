import 'package:e_shop/utils/app_color.dart';
import 'package:e_shop/utils/app_string.dart';
import 'package:e_shop/widgets/gap.dart';
import 'package:e_shop/widgets/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 600.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.colorC06496.withOpacity(0.8),
                  AppColor.color984997,
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 150.h,
              left: 30.w,
              right: 30.w,
            ),
            width: double.infinity,
            height: 500.h,
            decoration: BoxDecoration(
              color: AppColor.colorWhite,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              children: [
                VerticalGap(
                  gap: 30.h,
                ),
                TextDesign(
                  text: AppString.signIn,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
