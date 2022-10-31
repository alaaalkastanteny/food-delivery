import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  static const String AppBaseUrl = "http://localhost:5168/dotnet/Ecommerce/api";

  late Map<String, String> _mainHeaders;

  ApiClient() {
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Beared $token',
    };
  }
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
