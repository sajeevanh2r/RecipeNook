import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class OtpInputField extends StatelessWidget {
  final bool first;
  final bool last;
  final TextEditingController? controller;

  const OtpInputField({
    super.key,
    this.first = false,
    this.last = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 65,
      child: TextField(
        controller: controller,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        // Limit to 1 character
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        // Match the Serif font from your UI (numbers 7, 4, 1)
        style: const TextStyle(
          fontFamily: 'InriaSerif',
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        onChanged: (value) {
          if (value.length == 1 && !last) {
            // Move focus to the next box
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && !first) {
            // Move focus back to the previous box
            FocusScope.of(context).previousFocus();
          }
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.inputFieldBackground, // White
          contentPadding: EdgeInsets.zero,
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
            borderSide: const BorderSide(color: AppColors.primaryOrange, width: 2),
          ),
        ),
      ),
    );
  }
}