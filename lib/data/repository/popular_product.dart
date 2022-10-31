import 'package:delivery/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProduct extends GetxService {
  final ApiClient apiClient;
  final String _endpoint = "";
  PopularProduct({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient
        .getData(ApiClient.AppBaseUrl + "/Product/GetProduct?id=2145431308");
  }
}
