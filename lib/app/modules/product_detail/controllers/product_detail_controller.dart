import 'package:get/get.dart';

import '../../../model/product_list_model.dart';
import '../../../network/api_client.dart';

class ProductDetailController extends GetxController {

  RxString name = ''.obs;
  RxInt id = 0.obs;
  RxBool isLoading = false.obs;
  final _apiHelper = Get.find<ApiClient>();
  Rx<Product> product = Product().obs;

  @override
  void onInit() {
    name.value = Get.arguments['productName'];
    id.value = Get.arguments['productId'];
    getProduct();
    super.onInit();
  }

  Future getProduct() async {
    isLoading.value = true;
    final response = await _apiHelper.product(id.value);

    if (response != null) {
      final data = Product.fromJson(response.data);
      product.value = data;
    } else {
      ///Add Snack-bar
    }
    isLoading.value = false;
  }

}
