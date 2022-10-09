import 'package:clock_app/Constant/app_colors.dart';
import 'package:clock_app/Screen/Bottomnavbar/alarm_screen.dart';
import 'package:clock_app/Screen/Bottomnavbar/analog_clock_screen.dart';
import 'package:clock_app/Screen/Bottomnavbar/stopwatch_screen.dart';
import 'package:clock_app/Screen/Bottomnavbar/task_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({Key? key}) : super(key: key);

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  var pages = [
    AnalogClockScreen(),
    AlarmScreen(),
    StopwatchScreen(),
    TaskScreen()
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          currentIndex = index;
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.black,
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.black,
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: SvgPicture.asset(
                'assets/images/svg/clock.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),
            label: 'CLOCK',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.black,
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: SvgPicture.asset(
                'assets/images/svg/alarm.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),
            label: 'ALARM',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.black,
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: SvgPicture.asset(
                'assets/images/svg/stopwatch.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),
            label: 'STOPWATCH',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.black,
            icon: Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: SvgPicture.asset(
                'assets/images/svg/tasks.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),
            label: 'TASKS',
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
