import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final bool useSerif;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xFF20B2AA), 
    this.useSerif = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: useSerif ? 'PlayfairDisplay' : 'Poppins',
        ),
      ),
    );
  }
}