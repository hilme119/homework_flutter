import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  // اختياري
  final String? imagePath;
  final Color backgroundColor;
  final Color textColor;
  final bool showArrow;

  const ActionButton({
    super.key,
    required this.text,
    required this.onTap,
    this.imagePath,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.showArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(60),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(60),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null) ...[
              Image.asset(imagePath!, height: 28),
              const SizedBox(width: 15),
            ],
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (showArrow) ...[
              const Spacer(),
              Icon(Icons.arrow_forward, color: textColor),
            ],
          ],
        ),
      ),
    );
  }
}
