import 'package:e_shop/app/modules/home/views/component/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_string.dart';
import '../../../widgets/custom_cached_image.dart';
import '../../../widgets/gap.dart';
import '../../../widgets/text_design.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  Widget _ui() {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 15.h,
      ),
      itemBuilder: (context, index) => _listDesign(index: index),
      separatorBuilder: (context, index) => VerticalGap(
        gap: 15.h,
      ),
      itemCount: 5,
    );
  }

  Widget _listDesign({required int index}) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 15.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          gradient: LinearGradient(colors: [
            AppColor.color0E101B.withOpacity(0.3),
            AppColor.color0E101B.withOpacity(0.65),
          ], begin: Alignment.topCenter),
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
            TextDesign(
              text: 'text',
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            VerticalGap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextDesign(
                      text: '\$200',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    HorizontalGap(),
                    TextDesign(
                      text: '10%',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                TextDesign(
                  text: '10%',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: TextDesign(
          text: AppString.eShop,
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: AppColor.colorWhite,
        ),
        backgroundColor: AppColor.color0E101B,
      ),
      body: _ui(),
    );
  }
}
