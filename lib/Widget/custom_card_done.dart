import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

class CustomCardDone extends StatelessWidget {
  CustomCardDone({Key? key}) : super(key: key);

  var colorlist = [
    Color.fromRGBO(101, 188, 38, 1),
    Color.fromRGBO(101, 188, 39, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.w, right: 12.w),
      child: Container(
        height: 99.h,
        width: 323.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(28, 35, 45, 0.4),
              Color.fromRGBO(28, 35, 45, 0),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      'TODAY\'S MOOD',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu Condensed'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.w),
                  child: Image.asset(
                    'assets/images/svg/profileimg.png',
                    height: 74.h,
                    width: 74.w,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'WORK TO DO',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.sp),
                            ),
                            Wrap(
                              children: [
                                Text('03 ',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 10.sp)),
                                Text('MAY 2021',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10.sp)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                            'Optimize your schedule for this approach by blocking out time at the start of every day...',
                            style:
                                TextStyle(color: Colors.white, fontSize: 9.sp)),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Done',
                                style: TextStyle(
                                  color: colorlist[0],
                                  fontSize: 10.sp,
                                )),
                            Text('01:16 MINS YOU SAVE',
                                style: TextStyle(
                                    color: colorlist[1], fontSize: 10.sp)),
                            Text('REMOVE TASK',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 80, 113, 1),
                                    fontSize: 10.sp)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
