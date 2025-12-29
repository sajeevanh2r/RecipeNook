import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class AppTheme {
 
  static const String _serifFont = 'InriaSerif';
  static const String _sansFont = 'Poppins';

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: _sansFont,
      textTheme: const TextTheme(
       
        headlineLarge: TextStyle(
          fontFamily: _serifFont,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.textWhite,
          height: 1.2,
        ),
        
        
        displayMedium: TextStyle(
          fontFamily: _serifFont,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          color: AppColors.textWhite,
        ),

        
        displayLarge: TextStyle(
          fontFamily: _serifFont,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black, 
        ),

        
        bodyMedium: TextStyle(
          fontFamily: _sansFont,
          fontSize: 14,
          color: AppColors.textGrey,
          height: 1.5,
        ),

        
        labelLarge: TextStyle(
          fontFamily: _sansFont,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),

      
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFieldBackground,
        hintStyle: TextStyle(
          color: Colors.grey.shade600, 
          fontSize: 14,
          fontFamily: _sansFont,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          borderSide: const BorderSide(color: AppColors.primaryOrange, width: 1.5),
        ),
      ),

      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryOrange,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            fontFamily: _sansFont,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusM),
          ),
          elevation: 0,
        ),
      ),

      
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.tealLight,
          textStyle: const TextStyle(
            fontFamily: _sansFont,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}