import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Fees/Controllor/FeesControllor.dart';
import 'package:sizer/sizer.dart';

class UpdateFeesScreen extends StatefulWidget {
  const UpdateFeesScreen({Key? key}) : super(key: key);

  @override
  State<UpdateFeesScreen> createState() => _UpdateFeesScreenState();
}

class _UpdateFeesScreenState extends State<UpdateFeesScreen> {
  FeesControllor feesControllo = Get.put(
    FeesControllor(),
  );

  int index = Get.arguments;

  @override
  void initState() {
    super.initState();

    feesControllo.txtFirstNameu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['first_name']}");
    feesControllo.txtLastNameu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['last_name']}");
    feesControllo.txtMobileNou = TextEditingController(text: "${feesControllo.FeesDetailList[index]['mobile_no']}");
    feesControllo.txtDateu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['date']}");
    feesControllo.txtPaidFeesu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['paidFees']}");
    feesControllo.txtLessFeesu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['lessFees']}");
    feesControllo.txtTotalFeesu = TextEditingController(text: "${feesControllo.FeesDetailList[index]['totalFees']}");
    feesControllo.Stdu.value = feesControllo.FeesDetailList[index]['std'];
    feesControllo.Sexu.value = feesControllo.FeesDetailList[index]['sex'];
  }

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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 70.sp),
                        Text("Enter First Name"),
                        SizedBox(height: 5.sp),
                        TextField(
                          controller: feesControllo.txtFirstNameu,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.badge),
                            hintText: "Enter First Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Last Name"),
                        SizedBox(height: 5.sp),
                        TextField(
                          controller: feesControllo.txtLastNameu,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.badge),
                            hintText: "Enter Last Name",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Mobile No."),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: feesControllo.txtMobileNou,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.call),
                            hintText: "Enter Mobile No.",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Select Date"),
                        SizedBox(height: 5.sp),
                        TextField(
                          controller: feesControllo.txtDateu,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: Icon(Icons.date_range),
                              onPressed: () async {
                                feesControllo.dateTime = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(3000),
                                );

                                feesControllo.txtDateu = TextEditingController(
                                    text:
                                        "${feesControllo.dateTime!.day} / ${feesControllo.dateTime!.month} / ${feesControllo.dateTime!.year}");
                                setState(() {});
                              },
                            ),
                            hintText: "Select Date",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Paid Fees"),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: feesControllo.txtPaidFeesu,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: Icon(Icons.paid),
                              onPressed: () {},
                            ),
                            hintText: "Enter Paid Fees",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Total Fees"),
                        SizedBox(height: 5.sp),
                        TextField(
                          keyboardType: TextInputType.number,
                          controller: feesControllo.txtTotalFeesu,
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: Icon(Icons.paid),
                              onPressed: () {},
                            ),
                            hintText: "Enter Total Fees",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Std."),
                        SizedBox(height: 5.sp),
                        Obx(
                          () => DropdownButton(
                            borderRadius: BorderRadius.circular(10),
                            menuMaxHeight: double.infinity,
                            isExpanded: true,
                            value: feesControllo.Stdu.value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Std 1",
                                ),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 2",
                                ),
                                value: 2,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 3",
                                ),
                                value: 3,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 4",
                                ),
                                value: 4,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 5",
                                ),
                                value: 5,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 6",
                                ),
                                value: 6,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 7",
                                ),
                                value: 7,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 8",
                                ),
                                value: 8,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 9",
                                ),
                                value: 9,
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Std 10",
                                ),
                                value: 10,
                              ),
                            ],
                            onChanged: (value) {
                              feesControllo.Stdu.value = value!;
                            },
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Text("Enter Gender."),
                        SizedBox(height: 5.sp),
                        Obx(
                          () => DropdownButton(
                            borderRadius: BorderRadius.circular(10),
                            menuMaxHeight: double.infinity,
                            isExpanded: true,
                            value: feesControllo.Sexu.value,
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  "Male",
                                ),
                                value: "Male",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Female",
                                ),
                                value: "Female",
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  "Other",
                                ),
                                value: "Other",
                              ),
                            ],
                            onChanged: (value) {
                              feesControllo.Sexu.value = value!;
                            },
                          ),
                        ),
                        SizedBox(height: 10.sp),
                        Center(
                          child: InkWell(
                            onTap: () {
                              int totalFees = int.parse(
                                  "${feesControllo.txtTotalFeesu.text}");
                              int paidFees = int.parse(
                                  "${feesControllo.txtPaidFeesu.text}");

                              int LessFees = totalFees - paidFees;
                              feesControllo.updateFees(
                                id: feesControllo.FeesDetailList[index]['id'],
                                first_name: feesControllo.txtFirstNameu.text,
                                last_name: feesControllo.txtLastNameu.text,
                                mobile_no: feesControllo.txtMobileNou.text,
                                std: feesControllo.Stdu.value,
                                sex: feesControllo.Sexu.value,
                                date: feesControllo.txtDateu.text,
                                paidFees: feesControllo.txtPaidFeesu.text,
                                lessFees: LessFees,
                                totalFees: feesControllo.txtTotalFeesu.text,
                              );

                              feesControllo.readFees();
                              Get.back();
                            },
                            child: Container(
                              height: 35.sp,
                              width: 80.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                border: Border.all(color: Color(0xff473F97)),
                                color: Color(0x89473f97),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Update",
                                style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.black54,
                                      blurRadius: 2,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: Text(
                  "Update Fees Detail",
                  style: TextStyle(
                    color: Color(
                      0xffffffff,
                    ),
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
