import 'package:delivery/Controllers/Popular_Product_controller.dart';
import 'package:delivery/data/api/api_client.dart';
import 'package:delivery/data/repository/popular_product.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient());

  Get.lazyPut(() => PopularProduct(apiClient: Get.find()));

  Get.lazyPut(() => PopularProductController(popularProduct: Get.find()));
}
