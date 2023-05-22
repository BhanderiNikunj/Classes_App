import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/HomeWork/Controllor/AddHomeWorkControllor.dart';
import 'package:sizer/sizer.dart';

class HomeWorkScreen extends StatefulWidget {
  const HomeWorkScreen({Key? key}) : super(key: key);

  @override
  State<HomeWorkScreen> createState() => _HomeWorkScreenState();
}

class _HomeWorkScreenState extends State<HomeWorkScreen> {
  AddHomeWorkControllor addHomeWorkControllor = Get.put(
    AddHomeWorkControllor(),
  );

  @override
  void initState() {
    super.initState();

    addHomeWorkControllor.readHomeWork();
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 90),
                      Text(
                        "All HomeWork",
                        style: TextStyle(
                          color: Color(0xff5851A1),
                          fontSize: 15.sp,
                        ),
                      ),
                      Obx(
                        () => Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150.sp,
                                  height: 80.sp,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff0e0062)),
                                    borderRadius: BorderRadius.circular(8.sp),
                                    color: Color(0xff473F97),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.sp),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${addHomeWorkControllor.homeWork[index]['homeWork']}",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "Subject : ${addHomeWorkControllor.homeWork[index]['subject']}",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              "Std : ${addHomeWorkControllor.homeWork[index]['std']}",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                addHomeWorkControllor
                                                        .changeStdu.value =
                                                    addHomeWorkControllor
                                                        .homeWork[index]['std'];

                                                addHomeWorkControllor
                                                        .changeSubjectu.value =
                                                    addHomeWorkControllor
                                                            .homeWork[index]
                                                        ['subject'];

                                                addHomeWorkControllor
                                                        .txtHomeWorku =
                                                    TextEditingController(
                                                        text:
                                                            "${addHomeWorkControllor.homeWork[index]['homeWork']}");
                                                addHomeWorkControllor.txtdateu =
                                                    TextEditingController(
                                                        text:
                                                            "${addHomeWorkControllor.homeWork[index]['date']}");

                                                Get.defaultDialog(
                                                  title: "Update Data",
                                                  titleStyle: TextStyle(color: Color(0xff473F97),),
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Add Lesson",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff473F97),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 5.sp),
                                                        TextField(
                                                          controller:
                                                              addHomeWorkControllor
                                                                  .txtHomeWorku,
                                                          decoration:
                                                              InputDecoration(
                                                            label: Text(
                                                              "Add Lesson",
                                                            ),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 8.sp),
                                                        Text(
                                                          "Select Date",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff473F97),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 5.sp),
                                                        TextField(
                                                          controller:
                                                              addHomeWorkControllor
                                                                  .txtdateu,
                                                          decoration:
                                                              InputDecoration(
                                                            prefixIcon:
                                                                IconButton(
                                                              onPressed:
                                                                  () async {
                                                                addHomeWorkControllor
                                                                        .dateu =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      DateTime
                                                                          .now(),
                                                                  firstDate:
                                                                      DateTime(
                                                                          2000),
                                                                  lastDate:
                                                                      DateTime(
                                                                          3000),
                                                                );

                                                                addHomeWorkControllor
                                                                        .txtdateu =
                                                                    TextEditingController(
                                                                  text:
                                                                      "${addHomeWorkControllor.dateu!.day} / ${addHomeWorkControllor.dateu!.month} / ${addHomeWorkControllor.dateu!.year}",
                                                                );
                                                                setState(() {});
                                                              },
                                                              icon: Icon(
                                                                Icons
                                                                    .date_range,
                                                              ),
                                                            ),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 8.sp),
                                                        Text(
                                                          "Select Subject",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff473F97),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 5.sp),
                                                        Obx(
                                                          () => DropdownButton(
                                                            isExpanded: true,
                                                            value: addHomeWorkControllor
                                                                .changeSubjectu
                                                                .value,
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
                                                                value:
                                                                    "Science",
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Text(
                                                                  "English",
                                                                ),
                                                                value:
                                                                    "English",
                                                              ),
                                                              DropdownMenuItem(
                                                                child: Text(
                                                                  "Social Science",
                                                                ),
                                                                value:
                                                                    "Social Science",
                                                              ),
                                                            ],
                                                            onChanged: (value) {
                                                              setState(() {
                                                                addHomeWorkControllor
                                                                    .changeSubjectu
                                                                    .value = value!;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                        SizedBox(height: 8.sp),
                                                        Text(
                                                          "Select Stander",
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xff473F97),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(height: 5.sp),
                                                        Obx(
                                                          () => DropdownButton(
                                                            isExpanded: true,
                                                            value:
                                                                addHomeWorkControllor
                                                                    .changeStdu
                                                                    .value,
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
                                                              addHomeWorkControllor
                                                                      .changeStdu
                                                                      .value =
                                                                  value!;
                                                            },
                                                          ),
                                                        ),
                                                        Center(
                                                          child: InkWell(
                                                            onTap: () {
                                                              addHomeWorkControllor
                                                                  .updateHomeWork(
                                                                id: addHomeWorkControllor
                                                                        .homeWork[
                                                                    index]['id'],
                                                                homeWork:
                                                                    addHomeWorkControllor
                                                                        .txtHomeWorku
                                                                        .text,
                                                                date:
                                                                    addHomeWorkControllor
                                                                        .txtdateu
                                                                        .text,
                                                                subject:
                                                                    addHomeWorkControllor
                                                                        .changeSubjectu
                                                                        .value,
                                                                std: addHomeWorkControllor
                                                                    .changeStdu
                                                                    .value,
                                                              );

                                                              addHomeWorkControllor
                                                                  .readHomeWork();

                                                              Get.back();
                                                            },
                                                            child: Container(
                                                              height: 50,
                                                              width: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                    0xff000000,
                                                                  ),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                color: Color(
                                                                  0xff473F97,
                                                                ),
                                                              ),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "Submit",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                                // addHomeWorkControllor.updateHomeWork(id: id, homeWork: homeWork, date: date, subject: subject, std: std);
                                              },
                                              child: Icon(
                                                Icons.edit,
                                                color: Colors.white,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                addHomeWorkControllor
                                                    .delateHomeWork(
                                                  id: addHomeWorkControllor
                                                      .homeWork[index]['id'],
                                                );
                                                addHomeWorkControllor
                                                    .readHomeWork();
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            itemCount: addHomeWorkControllor.homeWork.length,
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
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  Text(
                    "Home Work",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff473F97),
          onPressed: () {
            Get.toNamed('/AddhomeWork');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    addHomeWorkControllor.readHomeWork();
  }
}
