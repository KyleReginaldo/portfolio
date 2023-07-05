import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/datasource/local_data_source.dart';
import 'package:portfolio/presentation/pages/about.tab.dart';
import 'package:portfolio/presentation/pages/education.tab.dart';
import 'package:portfolio/presentation/pages/hobby.tab.dart';
import 'package:portfolio/presentation/pages/resume.tab.dart';
import 'package:portfolio/presentation/pages/schedule.tab.dart';
import 'package:portfolio/presentation/pages/video.player.screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'gallery.tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(
      length: 6,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("""
========================================
\t\t${MediaQuery.sizeOf(context).width}
========================================
""");
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          'assets/images/logo.png',
          height: 4.h,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: LocalDataSource.persons.map((e) {
                  return Stack(
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Image.asset(
                          e.firstPicture,
                          width: MediaQuery.sizeOf(context).width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: MediaQuery.sizeOf(context).width > 600
                              ? MediaQuery.sizeOf(context).height * 0.2
                              : MediaQuery.sizeOf(context).height * 0.15,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(0),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(1),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
                options: CarouselOptions(
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayInterval: const Duration(seconds: 7),
                  autoPlay: true,
                  height: MediaQuery.sizeOf(context).width > 600
                      ? MediaQuery.sizeOf(context).height * 0.6
                      : MediaQuery.sizeOf(context).height * 0.4,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ),
              Positioned(
                bottom: 4.h,
                left: 2.h,
                right: 2.h,
                child: CarouselSlider(
                  items: LocalDataSource.ms.map((e) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.black.withOpacity(0.3),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const VideoPlayerScreen()));
                          },
                          icon: const Icon(Icons.play_arrow),
                          label: Text(
                            'Play',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          e.mv,
                          style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          e.body,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 7),
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    reverse: true,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Column(
              children: [
                TabBar(
                  padding: EdgeInsets.zero,
                  isScrollable: MediaQuery.sizeOf(context).width < 700,
                  controller: tabController,
                  tabs: const [
                    Tab(
                      text: 'SCHEDULE',
                    ),
                    Tab(
                      text: 'ABOUT',
                    ),
                    Tab(
                      text: 'HOBBIES',
                    ),
                    Tab(
                      text: 'RESUME',
                    ),
                    Tab(
                      text: 'EDUCATION',
                    ),
                    Tab(
                      text: 'GALLERY',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      ScheduleTab(),
                      AboutTab(),
                      HobbyTab(),
                      ResumeTab(),
                      EducationTab(),
                      GalleryTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
