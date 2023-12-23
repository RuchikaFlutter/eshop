import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  //TODO: Implement ProductDetailController

  RxString name = ''.obs;

  final count = 0.obs;
  @override
  void onInit() {
    name.value = Get.arguments['productName'];
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
