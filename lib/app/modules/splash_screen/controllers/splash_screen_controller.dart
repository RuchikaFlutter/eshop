import 'dart:async';

import 'package:e_shop/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    //isLoginCheck();
  }

  void isLoginCheck() {
    Timer(const Duration(seconds: 3,), () {
      Get.offAndToNamed(Routes.LOGIN,);
    });
  }


  @override
  Future<void> onReady() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAndToNamed(Routes.LOGIN,);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
