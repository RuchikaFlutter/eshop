import 'package:e_shop/app/routes/app_pages.dart';
import 'package:e_shop/app/utils/app_string.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  @override
  void onInit() {
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

  void navigate(String routeName) {
    switch (routeName) {
      case AppString.addAProduct:
        Get.back();
        Get.toNamed(Routes.ADD_A_PRODUCT);
        break;
      case AppString.updateAProduct:
        Get.back();
        Get.toNamed(Routes.UPDATE_A_PRODUCT);
        break;
      case AppString.deleteAProduct:
        Get.back();
        Get.toNamed(Routes.DELETE_A_PRODUCT);
        break;
      case AppString.signOut:
        Get.toNamed(Routes.LOGIN);
        break;
      case AppString.productDetail:
        Get.toNamed(Routes.PRODUCT_DETAIL);
      default:
        Get.back();
    }
  }
}
