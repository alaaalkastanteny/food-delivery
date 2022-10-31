import 'package:delivery/data/repository/popular_product.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProduct popularProduct;
  PopularProductController({required this.popularProduct});
  List<dynamic> _PopularProductList = [];
  List<dynamic> get PopularProductList => _PopularProductList;
  Future<void> getPopularProductList() async {
    Response response = await popularProduct.getPopularProductList();
    if (response.statusCode == 200) {
      _PopularProductList = [];
      //_PopularProductList.addAll();
      update();
    } else {}
  }
}
