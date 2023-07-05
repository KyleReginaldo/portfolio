import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/presentation/pages/home.sreen.dart';
import 'package:portfolio/presentation/state_management/cubit/gallery_cubit.dart';
import 'package:portfolio/presentation/state_management/cubit/nav_bar_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        debugShowCheckedModeBanner: false,
        title: 'MANAIG',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          primaryColor: primaryColor,
          // fontFamily: 'BebasNeue',
          tabBarTheme: const TabBarTheme(
            indicatorColor: primaryColor,
            labelColor: primaryColor,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              overlayColor: const MaterialStatePropertyAll(primaryColor),
              foregroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              overlayColor: const MaterialStatePropertyAll(primaryColor),
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              backgroundColor: const MaterialStatePropertyAll(primaryColor),
              // fixedSize: MaterialStatePropertyAll(
              //   Size(
              //     16.w,
              //     5.h,
              //   ),
              // ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: backgroundColor,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NavBarCubit(),
            ),
            BlocProvider(
              create: (context) => GalleryCubit(),
            ),
          ],
          child: const HomeScreen(),
        ),
      );
    });
  }
}
