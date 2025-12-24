import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:go_router/go_router.dart';

import '/../constants/app_colors.dart';
import '/../widgets/primary_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // 1. Food Image
            Positioned(
              top: 85,
              left: -150,
              child: Transform.rotate(
                angle: 15.68 * (math.pi / 180),
                child: Image.asset(
                  'assets/images/image5.png',
                  width: 500,
                  height: 400,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 292,
                    height: 286,
                    color: const Color(0xFFB4B6B7),
                    child: const Icon(Icons.fastfood, color: Colors.white),
                  ),
                ),
              ),
            ),

            // 2. Title Texts
            Positioned(
              top: 490,
              left: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleText('Cooking', AppColors.textWhite, 48),
                  _titleText('Delicious', AppColors.textGrey, 40),
                  _titleText('Like a Chef', AppColors.textGrey, 40),
                ],
              ),
            ),

            // 3. Description
            Positioned(
              top: 660,
              left: 40,
              right: 35,
              child: Text(
                'Discover diverse and easy recipes made for every cooking level',
                style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 16,
                  color: AppColors.textWhite,
                ),
              ),
            ),

            // 4. Primary Button (Reusable)
            Positioned(
              bottom: 120,
              left: 35,
              right: 35,
              child: SizedBox(
                width: 308,
                child: PrimaryButton(
                  text: 'Get Started',
                  onPressed: () => context.go('/signup'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleText(String text, Color color, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'InriaSerif',
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        height: 1.1,
        color: color,
      ),
    );
  }
}
