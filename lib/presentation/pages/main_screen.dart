import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/colors.dart';
import 'package:portfolio/presentation/pages/educ_screen.dart';
import 'package:portfolio/presentation/pages/hobby_screen.dart';
import 'package:portfolio/presentation/pages/home_screen.dart';
import 'package:portfolio/presentation/pages/resume_screen.dart';
import 'package:portfolio/presentation/pages/sched_screen.dart';

import '../state_management/cubit/nav_bar_cubit.dart';
import 'about_screen.dart';
import 'gallery_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final navState = context.select(
        (NavBarCubit navBarCubit) => navBarCubit.state,
      );
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: RichText(
            text: TextSpan(
              text: 'KABOG',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: navState is Home ? primaryColor : Colors.white,
                fontSize: 24,
              ),
              children: const [
                TextSpan(
                  text: 'RIZZ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 1);
              },
              style: ButtonStyle(
                backgroundColor: navState is Home
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 2);
              },
              style: ButtonStyle(
                backgroundColor: navState is About
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('About'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 3);
              },
              style: ButtonStyle(
                backgroundColor: navState is Sched
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Schedule'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 4);
              },
              style: ButtonStyle(
                backgroundColor: navState is Hobby
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Hobby'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 5);
              },
              style: ButtonStyle(
                backgroundColor: navState is Resume
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Resume'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 6);
              },
              style: ButtonStyle(
                backgroundColor: navState is Educ
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Education'),
            ),
            TextButton(
              onPressed: () {
                context.read<NavBarCubit>().onNavigate(page: 7);
              },
              style: ButtonStyle(
                backgroundColor: navState is Gallery
                    ? const MaterialStatePropertyAll(primaryColor)
                    : const MaterialStatePropertyAll(Colors.transparent),
              ),
              child: const Text('Gallery'),
            ),
          ],
        ),
        body: BlocBuilder<NavBarCubit, NavBarState>(
          builder: (context, state) {
            if (state is Home) {
              return const HomeScreen();
            } else if (state is About) {
              return const AboutScreen();
            } else if (state is Sched) {
              return const SchedScreen();
            } else if (state is Hobby) {
              return const HobbyScreen();
            } else if (state is Resume) {
              return const ResumeScreen();
            } else if (state is Educ) {
              return const EducScreen();
            } else if (state is Gallery) {
              return const GalleryScreen();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      );
    });
  }
}
