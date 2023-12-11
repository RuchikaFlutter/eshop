import 'package:e_shop/app/utils/app_color.dart';
import 'package:e_shop/app/widgets/custom_cached_image.dart';
import 'package:e_shop/app/widgets/gap.dart';
import 'package:e_shop/app/widgets/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/product_list_controller.dart';

class ProductListView extends GetView<ProductListController> {
  String? title;

  ProductListView({
    Key? key,
    this.title = 'Title',
  }) : super(key: key);

  Widget _ui() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 15.h,
      ),
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: CustomCachedImage(
            imageUrl: 'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
            width: double.infinity,
            height: 250,
          ),
        ),
        VerticalGap(
          gap: 20,
        ),
        TextDesign(
          text: 'Title',
          fontSize: 24,
          fontWeight: FontWeight.w800,
        ),
        VerticalGap(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextDesign(
                  text: 'Price',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                HorizontalGap(),
                TextDesign(
                  text: 'Discount',
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            Row(
              children: [
                TextDesign(
                  text: 'Stock',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                HorizontalGap(),
                TextDesign(
                  text: 'Rating',
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
        VerticalGap(
          gap: 20,
        ),
        TextDesign(
          text: 'des',
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorC06496,
        title: TextDesign(
          text: title,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColor.colorWhite,
        ),
      ),
      body: _ui(),
    );
  }
}
