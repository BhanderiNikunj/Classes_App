import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Fees/Controllor/FeesControllor.dart';
import 'package:sizer/sizer.dart';

class StudentDetailScreen extends StatefulWidget {
  const StudentDetailScreen({Key? key}) : super(key: key);

  @override
  State<StudentDetailScreen> createState() => _StudentDetailScreenState();
}

class _StudentDetailScreenState extends State<StudentDetailScreen> {
  FeesControllor feesControllor = Get.put(
    FeesControllor(),
  );

  @override
  void initState() {
    super.initState();

    feesControllor.readFees();
  }

  int index = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 80.sp),
                      Center(
                        child: Container(
                          height: 80.sp,
                          width: 80.sp,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Student Name  :  ${feesControllor.FeesDetailList[index]['first_name']} ${feesControllor.FeesDetailList[index]['last_name']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Mobile No  :  ${feesControllor.FeesDetailList[index]['mobile_no']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Gender  :  ${feesControllor.FeesDetailList[index]['sex']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Std  :  ${feesControllor.FeesDetailList[index]['sex']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Date  :  ${feesControllor.FeesDetailList[index]['date']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        "Paid Fees  :  ${feesControllor.FeesDetailList[index]['paidFees']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        // "Less Fees  :  ${feesControllor.FeesDetailList[index]['paidFees'].toInt() - feesControllor.FeesDetailList[index]['paidFees']}",
                        "Less Fees  :  ",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                      SizedBox(height: 10.sp),
                      Text(
                        // "Less Fees  :  ${feesControllor.FeesDetailList[index]['paidFees'].toInt() - feesControllor.FeesDetailList[index]['paidFees']}",
                        "Total Fees  :  ${feesControllor.FeesDetailList[index]['totalFees']}",
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60.sp,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: Color(0xff473F97),
              ),
              alignment: Alignment.center,
              child: ListTile(
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Student Detail",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
