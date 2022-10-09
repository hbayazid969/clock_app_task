import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 21.h, left: 26.w),
                child: Text(
                  'LUCKNOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontFamily: 'Ubuntu Condensed'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 28.w, top: 28.h),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/calendar.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    SvgPicture.asset(
                      'assets/images/svg/Chart.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 26.w),
            child: Text(
              'Uttar Pradesh',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontFamily: 'Ubuntu Condensed'),
            ),
          )
        ],
      ),
    );
  }
}
