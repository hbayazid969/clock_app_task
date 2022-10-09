import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:intl/intl.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    final format1 = DateFormat('hh');
    final format2 = DateFormat('mm');
    final format3 = DateFormat('ss');
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    format1.format(dateTime),
                    style: TextStyle(
                        fontSize: 103.sp,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    format2.format(dateTime),
                    style: TextStyle(
                        fontSize: 103.sp,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15.h,
              right: 104.w,
              child: Text(
                format3.format(dateTime),
                style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Helvetica Neue',
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            )
          ],
        ),
        SizedBox(
          height: 13.h,
        ),
        Text('MONDAY',
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontFamily: 'Ubuntu Condensed')),
        Wrap(
          children: [
            Text('03 ', style: TextStyle(color: Colors.red, fontSize: 10.sp)),
            Text('MAY 2021',
                style: TextStyle(color: Colors.white, fontSize: 10.sp)),
          ],
        ),
      ],
    );
  }
}
