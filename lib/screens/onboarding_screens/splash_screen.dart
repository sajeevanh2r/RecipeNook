import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    
    // Timer for navigation to Onboarding 1.1
    // Adjust seconds as per your preference (2-3s is standard)
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        // Navigating via GoRouter
        context.go('/onboarding1'); 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      // Using Stack to place the logo at the exact coordinates provided
      body: Stack(
        children: [
          Positioned(
            top: 320,  // As per your design specs
            left: 65, // As per your design specs
            child: Image.asset(
              'assets/images/image1.png', // Ensure the file exists here
              width: 300,
              height: 300,
              
              fit: BoxFit.contain,
              // Error handling if image is missing
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.restaurant_menu,
                  size: 100,
                  color: Color.fromARGB(255, 255, 170, 42),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}