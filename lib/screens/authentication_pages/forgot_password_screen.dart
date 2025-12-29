import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/../constants/app_colors.dart';
import '/../widgets/primary_button.dart';
import '/../widgets/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: () => context.go('/login'),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: AppColors.textWhite,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Back to Login',
                        style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 14,
                          color: AppColors.textWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              
              Row(
                children: const [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textWhite,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '🔑',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),

              const SizedBox(height: 15),

             
              const Text(
                'Enter your email address. We will send an OTP code for verification in the next step',
                style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 16,
                  height: 1.4,
                  color: AppColors.textWhite,
                ),
              ),

              const SizedBox(height: 50),

              // --- EMAIL INPUT ---
              const CustomTextField(
                hintText: 'Email',
              ),

              const SizedBox(height: 180),

              
              PrimaryButton(
                text: 'Continue',
                onPressed: () => context.push('/verification'),
              ),

              const SizedBox(height: 150),

              
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: Colors.white, thickness: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'or connect with',
                      style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 14,
                        color: AppColors.textWhite,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: Colors.white, thickness: 1),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialIcon('assets/icons/facebook-fill.png', Icons.facebook),
                  const SizedBox(width: 20),
                  _socialIcon('assets/icons/google-fill.png', Icons.g_mobiledata),
                  const SizedBox(width: 20),
                  _socialIcon('assets/icons/apple.png', Icons.apple),
                ],
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // Reusable Social Icon Widget
  Widget _socialIcon(String assetPath, IconData fallback) {
    return Image.asset(
      assetPath,
      width: 32,
      height: 32,
      color: Colors.white,
      errorBuilder: (_, __, ___) => Icon(
        fallback,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
