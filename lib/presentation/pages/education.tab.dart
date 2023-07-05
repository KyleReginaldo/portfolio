import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:timelines/timelines.dart';

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          color: primaryColor,
        ),
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocalDataSource.educs[index].schoolName,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    LocalDataSource.educs[index].image,
                    height: MediaQuery.sizeOf(context).height * 0.36,
                    width: MediaQuery.sizeOf(context).width * 0.36,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          oppositeContentsBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage(LocalDataSource.educs[index].userImage),
                  ),
                  Text(LocalDataSource.educs[index].name),
                ],
              ),
            );
          },
          itemCount: LocalDataSource.educs.length,
        ),
      ),
    );
  }
}
