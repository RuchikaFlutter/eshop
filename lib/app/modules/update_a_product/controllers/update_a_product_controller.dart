import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_string.dart';

class UpdateAProductController extends GetxController {
  late TextEditingController pNameController;
  late TextEditingController descriptionController;
  late TextEditingController priceController;
  late TextEditingController discountController;
  late TextEditingController brandController;
  late TextEditingController categoryController;
  late TextEditingController ratingController;
  late TextEditingController stockController;

  @override
  void onInit() {
    super.onInit();
    pNameController = TextEditingController();
    descriptionController = TextEditingController();
    priceController = TextEditingController();
    discountController = TextEditingController();
    brandController = TextEditingController();
    categoryController = TextEditingController();
    ratingController = TextEditingController();
    stockController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    pNameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    discountController.dispose();
    brandController.dispose();
    categoryController.dispose();
    ratingController.dispose();
    stockController.dispose();
  }

  void onSubmit() {
    if (pNameController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterProductName,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (descriptionController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterDescription,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (priceController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterPrice,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (discountController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterPercentageDiscount,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (brandController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterBrand,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (categoryController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterCategory,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (ratingController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterRatings,
        backgroundColor: AppColor.colorCECECE,
      );
    } else if (stockController.text.trim().isEmpty) {
      Get.snackbar(
        AppString.error,
        AppString.pleaseEnterStock,
        backgroundColor: AppColor.colorCECECE,
      );
    } else {}
  }
}
