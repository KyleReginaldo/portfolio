import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/presentation/pages/main_screen.dart';
import 'package:portfolio/presentation/state_management/cubit/nav_bar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Porfolio',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'BebasNeue',
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: const MaterialStatePropertyAll(primaryColor),
            foregroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(primaryColor),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(primaryColor),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: backgroundColor,
        ),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => NavBarCubit(),
        child: const MainScreen(),
      ),
    );
  }
}
