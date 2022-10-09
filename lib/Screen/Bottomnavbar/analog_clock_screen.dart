import 'package:analog_clock/analog_clock.dart';
import 'package:clock_app/Constant/app_colors.dart';
import 'package:clock_app/Widget/custom_analog_clock.dart';
import 'package:clock_app/Widget/custom_card_done.dart';
import 'package:clock_app/Widget/custom_card_pending.dart';
import 'package:clock_app/Widget/custom_appbar.dart';
import 'package:clock_app/Widget/custom_digital_clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/svg.dart';

class AnalogClockScreen extends StatefulWidget {
  const AnalogClockScreen({Key? key}) : super(key: key);

  @override
  State<AnalogClockScreen> createState() => _AnalogClockScreenState();
}

class _AnalogClockScreenState extends State<AnalogClockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: 68.h,
            ),
            Expanded(
              flex: 3,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomAnalogClock(),
                  DigitalClock(),
                ],
              ),
            ),
            SizedBox(
              height: 53.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svg/cloudy.svg',
                  height: 38.5.h,
                  width: 38.5.w,
                ),
                Text("36\u00B0",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33.sp,
                        fontWeight: FontWeight.bold)),
                Text("c",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wb_sunny,
                  color: Colors.red,
                  size: 20.h,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text('06:15 AM',
                    style: TextStyle(fontSize: 11.h, color: Colors.white)),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  'Sunset, Clouds',
                  style: TextStyle(fontSize: 13.h, color: Colors.white),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.red,
                  size: 20.h,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text('06:15 AM',
                    style: TextStyle(fontSize: 11.h, color: Colors.white)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'TODAY',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.10,
                  fontFamily: 'Ubuntu Condensed'),
            ),
            SizedBox(
              height: 51.h,
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomCardPending(),
                  CustomCardDone(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
