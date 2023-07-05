import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              'assets/images/about_bg.jpg',
            ),
            fit: BoxFit.cover,
            opacity: 0.3,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'We are a team of enthusiastic college students, always eager to learn and develop our skills and abilities to the fullest.\nPassionate and vigorous when it comes to learning and developing such websites with specific functions and capabilities, apps that help relieve the daily life of humans, UI/UX designs.\nWith the use of our website , we cater a wide range of information about us and much more. Our content is carefully curated and developed by enthusiastic and passionate college students like us who ensures accuracy and relevance.\nOur mission is to provide valuable information and resources to our visitors, helping them in various aspects of their lives. We strive to provide valuable information and resources to our visitors, helping them in various aspects of their lives.',
                textAlign: TextAlign.center,
                speed: const Duration(
                  milliseconds: 35,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
