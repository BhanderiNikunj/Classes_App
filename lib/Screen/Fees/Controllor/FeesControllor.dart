import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Utiles/DBHelper.dart';

class FeesControllor extends GetxController {
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  TextEditingController txtMobileNo = TextEditingController();
  TextEditingController txtDate = TextEditingController(
      text:
          "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
  TextEditingController txtPaidFees = TextEditingController();
  TextEditingController txtLessFees = TextEditingController();
  TextEditingController txtTotalFees = TextEditingController();

  RxInt Std = 1.obs;
  RxString Sex = "Male".obs;


  TextEditingController txtFirstNameu = TextEditingController();
  TextEditingController txtLastNameu = TextEditingController();
  TextEditingController txtMobileNou = TextEditingController();
  TextEditingController txtDateu = TextEditingController(
      text:
          "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
  TextEditingController txtPaidFeesu = TextEditingController();
  TextEditingController txtLessFeesu = TextEditingController();
  TextEditingController txtTotalFeesu = TextEditingController();

  RxInt Stdu = 1.obs;
  RxString Sexu = "Male".obs;

  DateTime? dateTime = DateTime.now();

  RxList FeesDetailList = [].obs;

  void insertFees({
    required first_name,
    required last_name,
    required mobile_no,
    required std,
    required sex,
    required date,
    required paidFees,
    required lessFees,
    required totalFees,
  }) {
    DBHelper.dbHelper.insertFees(
      first_name: first_name,
      last_name: last_name,
      mobile_no: mobile_no,
      std: std,
      sex: sex,
      date: date,
      paidFees: paidFees,
      lessFees: lessFees,
      totalFees: totalFees,
    );
  }

  Future<void> readFees() async {
    FeesDetailList.value = await DBHelper.dbHelper.readFees();
  }

  void delateFees({
    required id,
  }) {
    DBHelper.dbHelper.delateFees(id: id);
  }

  void updateFees({
    required id,
    required first_name,
    required last_name,
    required mobile_no,
    required std,
    required sex,
    required date,
    required paidFees,
    required lessFees,
    required totalFees,
  }) {
    DBHelper.dbHelper.updateFees(
      id: id,
      first_name: first_name,
      last_name: last_name,
      mobile_no: mobile_no,
      std: std,
      sex: sex,
      date: date,
      paidFees: paidFees,
      lessFees: lessFees,
      totalFees: totalFees,
    );
  }
}
