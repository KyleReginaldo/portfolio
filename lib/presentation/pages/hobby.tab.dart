import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HobbyTab extends StatelessWidget {
  const HobbyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: LocalDataSource.hobbies.map((e) {
          return Container(
            margin: EdgeInsets.all(2.h),
            padding: EdgeInsets.all(2.h),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  e.image,
                ),
                opacity: 0.4,
                fit: BoxFit.cover,
              ),
            ),
            width: MediaQuery.sizeOf(context).width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.h, vertical: 0.5.h),
                            child: Text(
                              e.ep,
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(
                            e.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        e.subtitle,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.download_rounded,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
