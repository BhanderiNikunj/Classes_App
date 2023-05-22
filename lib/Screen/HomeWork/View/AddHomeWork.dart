import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/HomeWork/Controllor/AddHomeWorkControllor.dart';
import 'package:sizer/sizer.dart';

class AddHomeWork extends StatefulWidget {
  const AddHomeWork({Key? key}) : super(key: key);

  @override
  State<AddHomeWork> createState() => _AddHomeWorkState();
}

class _AddHomeWorkState extends State<AddHomeWork> {
  AddHomeWorkControllor addHomeWorkControllor = Get.put(
    AddHomeWorkControllor(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: double.infinity,
            child: Stack(
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
                          SizedBox(height: 70.sp),
                          Text(
                            "Add Lesson",
                            style: TextStyle(
                              color: Color(0xff473F97),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.sp),
                          TextField(
                            controller: addHomeWorkControllor.txtHomeWork,
                            decoration: InputDecoration(
                              label: Text(
                                "Add Lesson",
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.sp),
                          Text(
                            "Select Date",
                            style: TextStyle(
                              color: Color(0xff473F97),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.sp),
                          TextField(
                            controller: addHomeWorkControllor.txtdate,
                            decoration: InputDecoration(
                              prefixIcon: IconButton(
                                onPressed: () async {
                                  addHomeWorkControllor.date.value =
                                      await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(3000),
                                  );

                                  addHomeWorkControllor.txtdate =
                                      TextEditingController(
                                    text:
                                        "${addHomeWorkControllor.date.value!.day} / ${addHomeWorkControllor.date.value!.month} / ${addHomeWorkControllor.date.value!.year}",
                                  );
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.date_range,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.sp),
                          Text(
                            "Select Subject",
                            style: TextStyle(
                              color: Color(0xff473F97),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.sp),
                          Obx(
                            () => DropdownButton(
                              isExpanded: true,
                              value: addHomeWorkControllor.changeSubject.value,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    "Maths",
                                  ),
                                  value: "Maths",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Science",
                                  ),
                                  value: "Science",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "English",
                                  ),
                                  value: "English",
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Social Science",
                                  ),
                                  value: "Social Science",
                                ),
                              ],
                              onChanged: (value) {
                                addHomeWorkControllor.changeSubject.value =
                                    value!;
                              },
                            ),
                          ),
                          SizedBox(height: 20.sp),
                          Text(
                            "Select Stander",
                            style: TextStyle(
                              color: Color(0xff473F97),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.sp),
                          Obx(
                            () => DropdownButton(
                              isExpanded: true,
                              value: addHomeWorkControllor.changeStd.value,
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
                                addHomeWorkControllor.changeStd.value = value!;
                              },
                            ),
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                addHomeWorkControllor.insertHomeWork(
                                  homeWork:
                                      addHomeWorkControllor.txtHomeWork.text,
                                  date: addHomeWorkControllor.txtdate.text,
                                  subject:
                                      addHomeWorkControllor.changeSubject.value,
                                  std: addHomeWorkControllor.changeStd.value,
                                );

                                addHomeWorkControllor.readHomeWork();

                                Get.back();
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff000000)),
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff473F97),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
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
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        "Add Home Work",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
