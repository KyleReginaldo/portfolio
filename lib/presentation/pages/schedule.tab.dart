import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.all(1.h),
        crossAxisSpacing: 1.h,
        mainAxisSpacing: 1.h,
        crossAxisCount: MediaQuery.sizeOf(context).width > 900
            ? 6
            : MediaQuery.sizeOf(context).width > 800
                ? 5
                : MediaQuery.sizeOf(context).width > 700
                    ? 4
                    : 3,
        children: LocalDataSource.schedules.map((e) {
          return Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(e.image),
                fit: BoxFit.cover,
                opacity: 0.6,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                Text(
                  e.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: e.font,
                    fontSize: 15.sp,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2.h,
                  ),
                  decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      )),
                  child: Text(
                    e.date,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList());
  }
}
