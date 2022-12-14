import 'package:get/state_manager.dart';
import 'package:shop_x_api/models/product.dart';
import 'package:shop_x_api/services/remote_services.dart';

class ProductController extends GetxController {
  var productList = <Welcome>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchJson();
    if (products == []) {
      print("----------------- No response in controller -----------------");
    } else {
      productList.value = products;
    }
  }
}
