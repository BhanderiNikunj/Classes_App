import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:my_app_1/Utiles/DBHelper.dart';


class AddHomeWorkControllor extends GetxController {
  TextEditingController txtHomeWork = TextEditingController();
  RxString changeSubject = "Maths".obs;
  RxInt changeStd = 10.obs;
  Rx<DateTime?> date = DateTime.now().obs;
  TextEditingController txtdate = TextEditingController(
      text:
          "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");

  RxList homeWork = [].obs;


  // update Variable

  TextEditingController
  txtHomeWorku =
  TextEditingController();
  RxString changeSubjectu =
          "Maths".obs;
  RxInt changeStdu = 10.obs;
  DateTime? dateu =
  DateTime.now();
  TextEditingController txtdateu =
  TextEditingController();

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

  void insertHomeWork({
    required homeWork,
    required date,
    required subject,
    required std,
  }) {
    DBHelper.dbHelper.insertHomeWork(
      homeWork: homeWork,
      date: date,
      subject: subject,
      std: std,
    );
  }

  Future<void> readHomeWork() async {
    homeWork.value = await DBHelper.dbHelper.readHomeWork();
    print(homeWork.value);
  }

  void delateHomeWork({
    required id,
  }) {
    DBHelper.dbHelper.delateHomeWork(id: id);
  }

  void updateHomeWork({
    required id,
    required homeWork,
    required date,
    required subject,
    required std,
  }) {
    DBHelper.dbHelper.updateHomeWork(
      id: id,
      homeWork: homeWork,
      date: date,
      subject: subject,
      std: std,
    );

    readHomeWork();
  }
}
