import 'dart:async';

import 'package:e_shop/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../utils/app_image.dart';

class SplashScreenController extends GetxController {

  RxString image = ''.obs;

  @override
  void onInit() {
    super.onInit();
    image.value = AppImage.logo;
    isLoginCheck();
  }

  void isLoginCheck() {
    Timer(const Duration(seconds: 3,), () {
      Get.offAndToNamed(Routes.LOGIN,);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

}
