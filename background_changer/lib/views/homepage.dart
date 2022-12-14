import 'package:background_changer/controllers/color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final colorsController = Get.put(ColorsController());

  @override
  Widget build(BuildContext context) {
    return GetX<ColorsController>(builder: (controller) {
      return Container(
        color: controller.backgroundColor.value,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: controller.buttonColor.value, // background
              foregroundColor: Colors.white, // foreground
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            // onPressed: setRandomColor,
            onPressed: () {
              colorsController.setRandomColor();
            },
            child: const Text(
              'Click Me!!!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    });
  }
}
