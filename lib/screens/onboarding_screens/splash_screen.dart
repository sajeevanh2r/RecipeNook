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
    
    
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
       
        context.go('/onboarding1'); 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      
      body: Stack(
        children: [
          Positioned(
            top: 320, 
            left: 65, 
            child: Image.asset(
              'assets/images/image1.png', 
              width: 300,
              height: 300,
              
              fit: BoxFit.contain,
              
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