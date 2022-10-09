import 'package:analog_clock/analog_clock.dart';
import 'package:clock_app/Constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class CustomAnalogClock extends StatelessWidget {
  const CustomAnalogClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: AnalogClock(
                minuteHandColor: Colors.white,
                hourHandColor: AppColors.red,
                secondHandColor: AppColors.grey,
                height: 248.h,
                width: 150.w,
                showAllNumbers: false,
                showNumbers: false,
                showTicks: false),
          ),
          Center(
            child: Image.asset(
              'assets/images/svg/clockborder.png',
              height: 262.h,
              width: 262.w,
            ),
          ),
          Positioned(
            top: 180.h,
            left: 163.w,
            right: 150.w,
            child: Text('MONDAY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontFamily: 'Ubuntu Condensed')),
          ),
          Positioned(
            top: 200.h,
            left: 163.w,
            right: 150.w,
            child: Wrap(
              children: [
                Text('03 ',
                    style: TextStyle(color: Colors.red, fontSize: 10.sp)),
                Text('MAY 2021',
                    style: TextStyle(color: Colors.white, fontSize: 10.sp)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
