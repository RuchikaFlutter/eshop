import 'package:e_shop/app/widgets/gap.dart';
import 'package:e_shop/app/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_string.dart';
import '../../../widgets/text_design.dart';
import '../controllers/add_a_product_controller.dart';

class AddAProductView extends GetView<AddAProductController> {
  const AddAProductView({Key? key}) : super(key: key);

  Widget _ui() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      children: [
        Label(
          text: AppString.productName,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp(r'[a-z A-Z0-9!@#\$%^&*(),.?":{}|<>]')),
          ],
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.description,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.price,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.percentageDiscount,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.brand,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-z A-Z]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.category,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-z A-Z]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.ratings,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        Label(
          text: AppString.stock,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          cursorColor: AppColor.color984997,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            hintText: AppString.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color984997,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextDesign(
          text: AppString.addAProduct,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColor.colorWhite,
        ),
        backgroundColor: AppColor.colorC06496,
      ),
      body: _ui(),
    );
  }
}
