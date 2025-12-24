import 'package:go_router/go_router.dart';
import 'package:recipe_nook/screens/authentication_pages/login_screen.dart';
import 'package:recipe_nook/screens/authentication_pages/reset_password.dart';
import 'package:recipe_nook/screens/authentication_pages/reset_password_success.dart';
import 'package:recipe_nook/screens/authentication_pages/verification.dart';
import '../screens/onboarding_screens/splash_screen.dart';
import '../screens/onboarding_screens/onboarding_1.1_screen.dart';
import '../screens/onboarding_screens/onboarding_1.2_screen.dart';
import '../screens/onboarding_screens/onboarding_1.3_screen.dart';
import '../screens/onboarding_screens/onboarding_getstarted_screen.dart';
import '../screens/authentication_pages/sign_up_screen.dart';
import '../screens/authentication_pages/login_screen.dart';
import '../screens/authentication_pages/forgot_password_screen.dart';
import '../screens/authentication_pages/verification.dart';
import '../screens/authentication_pages/reset_password.dart';
import '../screens/authentication_pages/reset_password_success.dart';  

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding1',
        builder: (context, state) => const OnboardingOne(),
      ),
      GoRoute(
        path: '/onboarding2',
        builder: (context, state) => const OnboardingTwo(),
      ),
      GoRoute(
        path: '/onboarding3',
        builder: (context, state) => const Onboarding13Screen(),
      ),
      GoRoute(
        path: '/get_started', // <--- Make sure this is exactly what you call
        builder: (context, state) => const GetStartedScreen(),
      ),
      // Placeholder for next task
       GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpScreen(),
      ),

      GoRoute(
        path: '/login',
        builder: (_, __) => const LoginScreen(),
      ),

      GoRoute(
        path: '/forgot_password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      GoRoute(path:'/verification',
        builder: (context, state) => const VerificationScreen(),
      ),

      GoRoute(path: 
        '/reset_password',
        builder: (context, state) => const ResetPasswordScreen(),
      ),

      GoRoute(
        path: '/reset_password_success',
        builder: (context, state) => const ResetSuccessScreen(),
      ),
    ],
  );
}