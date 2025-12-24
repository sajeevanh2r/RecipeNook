import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../constants/app_colors.dart';

class OnboardingTwo extends StatelessWidget {
  const OnboardingTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background, // Black background
      body: SafeArea(
        child: Stack(
          children: [
            // Image Container (Positioned exactly as previous screens)
            Positioned(
              top: 149,
               left: (screenWidth -300 ) / 2, // Center the 200px image // Center the 200px image
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Builder(
                  builder: (context) {
                    // Replace with your actual image
                    return Image.asset(
                      'assets/images/image3.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          decoration: BoxDecoration(
                            color: AppColors.tealDark.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.people,
                              size: 80,
                              color: AppColors.textWhite,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),

            // Main Text Content
            Positioned(
              top: 500, // Position below image
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SERVE Text
                  const Text(
                    'LEARN',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontWeight: FontWeight.w700,
                      fontSize: 48.0,
                      height: 0.5, // Line height 24px / Font size 48px = 0.5
                      color: AppColors.textWhite,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                  // Description Text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Grow your kitchen confidence with step-by-step guidance and useful cooking tips.',
                      style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        height: 1.4286, // Line height 20px / Font size 14px = 1.4286
                        color: AppColors.textWhite, // Grey text as per design
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Navigation (skip, dots, Next)
            Positioned(
              bottom: 60,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip Button
                  TextButton(
                    onPressed: () {
                      context.go('/get_started'); // Direct to Get Started screen
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'skip',
                      style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        height: 1.3333, // Line height 20px / Font size 15px = 1.3333
                        color: AppColors.tealLight, // Teal color for skip
                      ),
                    ),
                  ),

                  // Progress Indicators (3 dots)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Dot 1 (inactive)
                      Container(
                        width: 30,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.progressBarline,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      // Dot 2 (inactive)
                      Container(
                        width: 30,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.tealDark.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      // Dot 3 (active)
                      Container(
                        width: 30,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.progressBarline,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ],
                  ),

                  // Next Button
                  TextButton(
                    onPressed: () {
                      context.go('/onboarding3'); // Go to Get Started screen
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                        height: 1.3333,
                        color: AppColors.tealLight, // Teal color for Next
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}