import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_x_api/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'product_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "ShopX",
                    style: TextStyle(
                      fontFamily: 'avernir',
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.view_list_rounded),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.grid_view),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => MasonryGridView.count(
                crossAxisCount: 2,
                itemCount: productController.productList.length,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  return ProductTile(productController.productList[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
