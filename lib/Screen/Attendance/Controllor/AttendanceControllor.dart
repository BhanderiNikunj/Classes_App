import 'package:get/get.dart';
import 'package:my_app_1/Screen/Attendance/Model/AttendanceModel.dart';
import 'package:my_app_1/Utiles/DBHelper.dart';

class AttendanceControllor extends GetxController {
  RxInt checkAtt = 0.obs;

  RxList<AttendanceModel> AttendanceList = [
    AttendanceModel(
      Attendance: 0,
      First_Name: "Nikunj",
      Last_Name: "Bhanderi",
      Std: 10,
    ),
    AttendanceModel(
      Attendance: 0,
      First_Name: "Nikunj",
      Last_Name: "Bhanderi",
      Std: 10,
    ),
  ].obs;

  void insterAtt({
    required first_name,
    required last_name,
    required std,
    required Attendance,
  }) {
    DBHelper.dbHelper.insertAtt(
      first_name: first_name,
      last_name: last_name,
      std: std,
      Attendance: Attendance,
    );
  }

  Future<void> readAtt() async {

    AttendanceList.value = await DBHelper.dbHelper.readAtt() as List<AttendanceModel>;


  }
}
