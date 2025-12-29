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
          
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
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

              
              const CustomTextField(
                hintText: 'Password',
                isPassword: true,
              ),
              const SizedBox(height: 25),
              const CustomTextField(
                hintText: 'Confirm Password',
                isPassword: true,
              ),

              
              const SizedBox(height: 80),

              
              PrimaryButton(
                text: 'Continue',
                onPressed: () => context.push('/reset_password_success'),
              ),

              const SizedBox(height: 120),

              
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
      
      errorBuilder: (context, error, stackTrace) => Icon(
        fallback,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}