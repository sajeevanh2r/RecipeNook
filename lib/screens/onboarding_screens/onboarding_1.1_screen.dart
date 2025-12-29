import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../constants/app_colors.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background, 
      body: SafeArea(
        child: Stack(
          children: [
            
            Positioned(
              top: 149,
              left: (screenWidth -300 ) / 2, 
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Builder(
                  builder: (context) {
                    
                    return Image.asset(
                      'assets/images/image2.png',
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

          
            Positioned(
              top: 500, 
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  const Text(
                    'COOK',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontWeight: FontWeight.w700,
                      fontSize: 48.0,
                      height: 0.5, 
                      color: AppColors.textWhite,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40),

                 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Explore a wide variety of recipes designed to make cooking simple, fun, and flavorful.',
                      style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        height: 1.4286, 
                        color: AppColors.textWhite, 
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

          
            Positioned(
              bottom: 60,
              left: 30,
              right: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  TextButton(
                    onPressed: () {
                      context.go('/get_started'); 
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
                        height: 1.3333, 
                        color: AppColors.tealLight, 
                      ),
                    ),
                  ),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Container(
                        width: 30,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.tealDark.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      
                      Container(
                        width: 30,
                        height: 6,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: AppColors.progressBarline,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                     
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

                  
                  TextButton(
                    onPressed: () {
                      context.go('/onboarding2'); 
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
                        color: AppColors.tealLight, 
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