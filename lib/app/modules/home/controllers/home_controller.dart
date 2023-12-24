import 'package:e_shop/app/routes/app_pages.dart';
import 'package:e_shop/app/utils/app_string.dart';
import 'package:get/get.dart';

import '../../../model/product_list_model.dart';
import '../../../network/api_client.dart';

class HomeController extends GetxController {
  final _apiHelper = Get.find<ApiClient>();
  RxList<Product>? products = <Product>[].obs;

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void navigate(String routeName, {int? index}) {
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
        Get.toNamed(Routes.PRODUCT_DETAIL, arguments: {
          'productName': products?[index!].title,
          'productId': products?[index!].id,
        });
      default:
        Get.back();
    }
  }

  Future getProductList() async {
    final response = await _apiHelper.productList();

    if (response != null) {
      final data = ProductListModel.fromJson(response.data);
      products?.value = data.products ?? [];
    } else {
      ///Add Snack-bar
    }
  }
}
