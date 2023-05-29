import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Attendance/Controllor/AttendanceControllor.dart';
import 'package:sizer/sizer.dart';

class AddNameScreen extends StatefulWidget {
  const AddNameScreen({Key? key}) : super(key: key);

  @override
  State<AddNameScreen> createState() => _AddNameScreenState();
}

class _AddNameScreenState extends State<AddNameScreen> {
  AttendanceControllor attendanceControllor = Get.put(
    AttendanceControllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(),
                  label: Text("Enter First Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
