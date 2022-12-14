import 'package:http/http.dart' as http;
import 'package:shop_x_api/models/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Welcome>> fetchJson() async {
    var response = await client.get(
        Uri.tryParse('https://makeup-api.herokuapp.com/api/v1/products.json')!);

    try {
      if (response.statusCode == 200) {
        var jsonString = response.body;
        print("json string");
        print(jsonString);
        return welcomeFromJson(jsonString);
      } else {
        print(
            "--------------- http response Unsuccessful!!! -----------------");
        return [];
      }
    } on Exception catch (e) {
      print("Error while getting data is $e");
      return [];
    }
  }
}
