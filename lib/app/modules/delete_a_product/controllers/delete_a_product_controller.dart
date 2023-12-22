import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_string.dart';

class DeleteAProductController extends GetxController {

  late TextEditingController productIDController;

  @override
  void onInit() {
    super.onInit();
    productIDController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    productIDController.dispose();
  }

  void onSubmit() {
    if(productIDController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterProductID,
        backgroundColor: AppColor.colorCECECE,
      );
    }
  }

}
