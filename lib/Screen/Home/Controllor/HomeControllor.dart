import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeControllor extends GetxController {
  RxList<Color> color = <Color>[
    Colors.green.shade200,
    Colors.pink.shade200,
    Colors.red.shade200,
    Colors.yellow.shade200,
    Colors.purple.shade200,
    Colors.green.shade200,
    Colors.pink.shade200,
    Colors.red.shade200,
    Colors.yellow.shade200,
    Colors.purple.shade200,
    Colors.blue.shade200,
  ].obs;
  RxList<Color> color1 = <Color>[
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.blue,
  ].obs;
}
