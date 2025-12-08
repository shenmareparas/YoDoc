import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSecondary;

  const OptionButton({
    super.key,
    required this.title,
    required this.onTap,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            isSecondary ? Colors.white.withValues(alpha: 0.1) : Colors.white,
        foregroundColor:
            isSecondary ? Colors.white : const Color.fromRGBO(6, 190, 182, 1),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
        // Minimum size to ensure consistency, adaptable based on content
        minimumSize: const Size(200, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: isSecondary
              ? const BorderSide(color: Colors.white, width: 2)
              : BorderSide.none,
        ),
        elevation: isSecondary ? 0 : 4,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
