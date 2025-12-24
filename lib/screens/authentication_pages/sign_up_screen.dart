import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:go_router/go_router.dart';

import '/../constants/app_colors.dart';
import '/../widgets/primary_button.dart';
import '/../widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          /// Bottom-left decorative plate image
          Positioned(
            bottom: 0,
            left: 0,
            child: Transform.rotate(
              angle: math.pi,
              child: Image.asset(
                'assets/images/image6.png',
                width: 220,
                fit: BoxFit.contain,
              ),
            ),
          ),

          /// Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Login button
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () => context.go('/login'),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(top: 20.0),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: AppColors.primaryOrange,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Header
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textWhite,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Create your recipe journey',
                    style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 16,
                      color: AppColors.textWhite,
                    ),
                  ),

                  const SizedBox(height: 48),

                  /// Form fields
                  const CustomTextField(hintText: 'Full Name'),
                  const SizedBox(height: 20),
                  const CustomTextField(hintText: 'Email'),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    hintText: 'Password',
                    isPassword: true,
                  ),

                  const SizedBox(height: 44),

                  /// Sign up button
                  PrimaryButton(
                    text: 'Sign Up',
                    onPressed: () => context.go('/home'),
                  ),

                  const SizedBox(height: 100),

                  /// Divider row
                 Row(
  children: [
    const Spacer(), // pushes content to the right side

    // Divider line
    const SizedBox(
      width: 140,
      child: Divider(indent: 10,
        color: Colors.white,
        thickness: 1,
      ),
    ),

    const SizedBox(width: 12),

    // Text
    const Text(
      'or connect with',
      style: TextStyle(
        fontFamily: 'InriaSerif',
        fontSize: 14,
        color: AppColors.textWhite,
      ),
    ),
  ],
),


                  const SizedBox(height: 28),

                  /// Social icons
                  Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: const [
    _SocialIcon(
      assetPath: 'assets/icons/facebook-fill.png',
      fallback: Icons.facebook,
    ),
    SizedBox(width: 20),
    _SocialIcon(
      assetPath: 'assets/icons/google-fill.png',
      fallback: Icons.g_mobiledata,
    ),
    SizedBox(width: 20),
    _SocialIcon(
      assetPath: 'assets/icons/apple.png',
      fallback: Icons.apple,
    ),
  ],
),


                  const Spacer(), // fills remaining space cleanly
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Reusable social icon widget
class _SocialIcon extends StatelessWidget {
  final String assetPath;
  final IconData fallback;

  const _SocialIcon({
    required this.assetPath,
    required this.fallback,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: 30,
      height: 30,
      color: Colors.white,
      errorBuilder: (_, __, ___) => Icon(
        fallback,
        color: Colors.white,
        size: 32,
      ),
    );
  }
}
