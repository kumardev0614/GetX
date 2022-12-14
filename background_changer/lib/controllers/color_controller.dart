import 'package:get/state_manager.dart';
// import 'package:background_changer/models/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ColorsController extends GetxController {
  var backgroundColor = Colors.white.obs;
  var buttonColor = Colors.black.obs;

  var colors = [
    Colors.amber,
    Colors.grey,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
    Colors.pink,
    Colors.deepPurple,
  ];

  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    var rnd2 = Random().nextInt(colors.length);
    backgroundColor.value = colors[rnd];
    buttonColor.value = colors[rnd2];
  }
}
