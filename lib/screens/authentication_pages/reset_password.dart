import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/../constants/app_colors.dart';
import '/../widgets/primary_button.dart';
import '/../widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          // Using a consistent padding to match the Figma design
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. TOP NAVIGATION
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () => context.pop(),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back, color: AppColors.textWhite, size: 20),
                      SizedBox(width: 10),
                      Text(
                        'Back',
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

              const SizedBox(height: 50),

              // 2. HEADER (Fixed Overflow with Wrap)
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  Text(
                    'Create New Password',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textWhite,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '🔐',
                    style: TextStyle(fontSize: 28),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // 3. DESCRIPTION
              const Text(
                'Enter your new password if you forget it, then you have to do forgot password.',
                style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 16,
                  height: 1.4,
                  color: AppColors.textWhite,
                ),
              ),

              const SizedBox(height: 50),

              // 4. INPUT FIELDS
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 25),
              const CustomTextField(
                hintText: 'Confirm Password',
                isPassword: true,
              ),

              // Added flexible spacing to push button down like in the design
              const SizedBox(height: 80),

              // 5. CONTINUE BUTTON
              PrimaryButton(
                text: 'Continue',
                onPressed: () => context.push('/reset_password_success'),
              ),

              const SizedBox(height: 120),

              // 6. OR CONNECT WITH
              Row(
                children: [
                  const Expanded(child: Divider(color: Colors.white)),
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
                  const Expanded(child: Divider(color: Colors.white)),
                ],
              ),

              const SizedBox(height: 30),

              // 7. SOCIAL ICONS (White symbols)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialIcon(Icons.facebook, 'assets/icons/facebook-fill.png'),
                  const SizedBox(width: 20),
                  _socialIcon(Icons.g_mobiledata, 'assets/icons/google-fill.png'),
                  const SizedBox(width: 20),
                  _socialIcon(Icons.apple, 'assets/icons/apple.png'),
                ],
              ),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialIcon(IconData fallback, String assetPath) {
    return Image.asset(
      assetPath,
      width: 32,
      height: 32,
      color: Colors.white,
      // Prevents the "!" error if images are missing
      errorBuilder: (context, error, stackTrace) => Icon(
        fallback,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}