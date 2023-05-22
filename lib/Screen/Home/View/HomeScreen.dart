import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app_1/Screen/Home/Controllor/HomeControllor.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeControllor homeControllor = Get.put(
    HomeControllor(),
  );

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
                      // SizedBox(height: 90),
                      // Text(
                      //   "Notice Board",
                      //   style: TextStyle(
                      //     color: Color(0xff5851A1),
                      //     fontSize: 15.sp,
                      //   ),
                      // ),
                      // SizedBox(height: 8.sp),
                      // Container(
                      //   height: 120.sp,
                      //   child: ListView.builder(
                      //     itemExtent: 150,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       return Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Container(
                      //           width: 150.sp,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: homeControllor.color1[index]),
                      //             borderRadius: BorderRadius.circular(8.sp),
                      //             color: homeControllor.color[index],
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //     itemCount: homeControllor.color.length,
                      //   ),
                      // ),
                      // SizedBox(height: 8.sp),
                      // Text(
                      //   "Home Work",
                      //   style: TextStyle(
                      //     color: Color(0xff5851A1),
                      //     fontSize: 15.sp,
                      //   ),
                      // ),
                      // Expanded(
                      //   child: ListView.builder(
                      //     itemExtent: 150,
                      //     itemBuilder: (context, index) {
                      //       return Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Container(
                      //           width: 150.sp,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: homeControllor.color1[index]),
                      //             borderRadius: BorderRadius.circular(8.sp),
                      //             color: homeControllor.color[index],
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //     itemCount: homeControllor.color.length,
                      //   ),
                      // ),
                      SizedBox(height: 80.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  height: 50.sp,
                                  width: 50.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff473F97),
                                  ),
                                  child: Image.asset(
                                      "Assets/Images/Home/home.png"),
                                ),
                              ),
                              SizedBox(height: 8.sp),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                child: Text(
                                  "Daseboard",
                                  style: TextStyle(
                                    color: Color(0xff473F97),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed('/homeWork');
                                },
                                child: Container(
                                  height: 50.sp,
                                  width: 50.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff473F97),
                                  ),
                                  child: Image.asset(
                                      "Assets/Images/Home/homeWork.png"),
                                ),
                              ),
                              SizedBox(height: 8.sp),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                child: Text(
                                  "Home Work",
                                  style: TextStyle(
                                    color: Color(0xff473F97),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff473F97),
                                ),
                                child: Image.asset(
                                  "Assets/Images/Home/attendance.png",
                                ),
                              ),
                              SizedBox(height: 8.sp),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                child: Text(
                                  "Attendance",
                                  style: TextStyle(
                                    color: Color(0xff473F97),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30.sp),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.toNamed('/fees');
                                },
                                child: Container(
                                  height: 50.sp,
                                  width: 50.sp,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff473F97),
                                  ),
                                  child:
                                      Image.asset("Assets/Images/Home/fees.png"),
                                ),
                              ),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                child: Text(
                                  "Fees Detail",
                                  style: TextStyle(
                                    color: Color(0xff473F97),
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                // decoration: BoxDecoration(
                                //   shape: BoxShape.circle,
                                //   color: Colors.white,
                                // ),
                                // child: Image.asset("Assets/Images/Home/homeWork.png"),
                              ),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                // child: Text(
                                //   "Home Work",
                                //   style:
                                //       TextStyle(color: Colors.white, fontSize: 10.sp),
                                // ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50.sp,
                                width: 50.sp,
                                // decoration: BoxDecoration(
                                //   shape: BoxShape.circle,
                                //   color: Colors.white,
                                // ),
                                // child: Image.asset(
                                //   "Assets/Images/Home/attendance.png",
                                // ),
                              ),
                              Container(
                                height: 20.sp,
                                width: 60.sp,
                                alignment: Alignment.center,
                                // child: Text(
                                //   "Daseboard",
                                //   style:
                                //       TextStyle(color: Colors.white, fontSize: 10.sp),
                                // ),
                              ),
                            ],
                          ),
                        ],
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
              child: ListTile(
                leading: InkWell(
                  onTap: () {
                    Get.toNamed('/menu');
                  },
                  child: Image.asset(
                    "Assets/Images/menu.png",
                    height: 30,
                    width: 30,
                  ),
                ),
                title: Text(
                  "Hello Nik,",
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                subtitle: Text(
                  "Teacher,",
                  style: TextStyle(color: Color(0xffffffff)),
                ),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage("Assets/Images/my.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
