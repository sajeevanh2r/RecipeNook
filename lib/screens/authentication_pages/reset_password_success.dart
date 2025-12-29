import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/../constants/app_colors.dart';
import '/../widgets/primary_button.dart';

class ResetSuccessScreen extends StatelessWidget {
  const ResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),

              
              Image.asset(
                'assets/images/image7.png', 
                width: 280,
                height: 280,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.check_circle_outline,
                  size: 150,
                  color: AppColors.primaryOrange,
                ),
              ),

              const SizedBox(height: 40),

              
              const Text(
                'Reset Password\nSuccessful!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textWhite,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 20),

              
              Text(
                'Your password has been successfully\nchanged',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 16,
                  color: AppColors.textWhite,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 200),

              
              PrimaryButton(
                text: 'Go to Login',
                onPressed: () {
                  
                  context.go('/login');
                },
              ),
              
              const SizedBox(height: 120), 
            ],
          ),
        ),
      ),
    );
  }
}