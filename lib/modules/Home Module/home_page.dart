import 'package:e_shop/utils/app_color.dart';
import 'package:e_shop/widgets/gap.dart';
import 'package:e_shop/widgets/text_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_cached_image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget listDesign({required int index}) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 15.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: AppColor.colorC06496.withOpacity(0.3),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
              child: CustomCachedImage(
                width: double.infinity,
                height: 150.h,
                imageUrl:
                    'https://i.dummyjson.com/data/products/1/thumbnail.jpg',
              ),
            ),
            VerticalGap(),
            TextDesign(text: 'text', fontSize: 24, fontWeight: FontWeight.w700,),
            VerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextDesign(text: '\$200', fontSize: 18, fontWeight: FontWeight.w600,),
                    HorizontalGap(),
                    TextDesign(text: '10%', fontSize: 20, fontWeight: FontWeight.w700,),
                  ],
                ),
                TextDesign(text: '10%', fontSize: 20, fontWeight: FontWeight.w700,),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorC06496,
      ),
      body: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 15.h,
        ),
        itemBuilder: (context, index) => listDesign(index: index),
        separatorBuilder: (context, index) => VerticalGap(gap: 15.h,),
        itemCount: 5,
      ),
    );
  }
}
