import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Fees/Controllor/FeesControllor.dart';
import 'package:sizer/sizer.dart';

class FeesScreen extends StatefulWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  State<FeesScreen> createState() => _FeesScreenState();
}

class _FeesScreenState extends State<FeesScreen> {
  FeesControllor feesControllor = Get.put(
    FeesControllor(),
  );

  @override
  void initState() {
    super.initState();

    feesControllor.readFees();
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
                      SizedBox(
                        height: 80.sp,
                      ),
                      Obx(
                        () => Expanded(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed('/studentdetail',
                                        arguments: index);
                                  },
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
                                                "First Name : ${feesControllor.FeesDetailList[index]['first_name']}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Last Name : ${feesControllor.FeesDetailList[index]['last_name']}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Std : ${feesControllor.FeesDetailList[index]['std']}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Gender : ${feesControllor.FeesDetailList[index]['sex']}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Get.toNamed('/updatefees',
                                                      arguments: index);
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 10.sp),
                                              InkWell(
                                                onTap: () {
                                                  feesControllor.delateFees(
                                                    id: feesControllor
                                                            .FeesDetailList[
                                                        index]['id'],
                                                  );

                                                  feesControllor.readFees();
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
                                ),
                              );
                            },
                            itemCount: feesControllor.FeesDetailList.length,
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
                trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 500,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.sp),
                              topLeft: Radius.circular(15.sp),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Select Std.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(height: 8.sp),
                                Obx(
                                  () => DropdownButton(
                                    value: feesControllor.fStd.value,
                                    isExpanded: true,
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
                                      feesControllor.fStd.value = value!;
                                    },
                                  ),
                                ),
                                SizedBox(height: 8.sp),
                                Center(
                                  child: InkWell(
                                    onTap: () {
                                      feesControllor.filterData(std: feesControllor.fStd.value);
                                      Get.back();
                                    },
                                    child: Container(
                                      width: 80.sp,
                                      height: 35.sp,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Color(0x9e0e0062)),
                                        borderRadius: BorderRadius.circular(8.sp),
                                        color: Color(0xa3473f97),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Fees Detail",
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/addfees');
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
