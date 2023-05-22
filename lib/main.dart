import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Attendance/View/AttendanceScreen.dart';
import 'package:my_app_1/Screen/Fees/View/AddFeesSceen.dart';
import 'package:my_app_1/Screen/Fees/View/FeesScreen.dart';
import 'package:my_app_1/Screen/Fees/View/UpdateFeesScreen.dart';
import 'package:my_app_1/Screen/Home/View/HomeScreen.dart';
import 'package:my_app_1/Screen/HomeWork/View/AddHomeWork.dart';
import 'package:my_app_1/Screen/HomeWork/View/HomeWorkScreen.dart';
import 'package:my_app_1/Screen/StudentDetail/View/StudentDetailScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: [
            GetPage(
              name: '/',
              page: () => HomeScreen(),
            ),
            GetPage(
              name: '/homeWork',
              page: () => HomeWorkScreen(),
            ),
            GetPage(
              name: '/AddhomeWork',
              page: () => AddHomeWork(),
            ),
            GetPage(
              name: '/fees',
              page: () => FeesScreen(),
            ),
            GetPage(
              name: '/addfees',
              page: () => AddFeesScreen(),
            ),
            GetPage(
              name: '/studentdetail',
              page: () => StudentDetailScreen(),
            ),
            GetPage(
              name: '/updatefees',
              page: () => UpdateFeesScreen(),
            ),
            GetPage(
              name: '/attendance',
              page: () => AttendanceScreen(),
            ),
          ],
        );
      },
    ),
  );
}
