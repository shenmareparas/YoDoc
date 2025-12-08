import 'package:flutter/material.dart';

class MedicineItem extends StatelessWidget {
  final String name;
  final String? description;
  final String imagePath;
  final double imageHeight;

  const MedicineItem({
    super.key,
    required this.name,
    this.description,
    required this.imagePath,
    this.imageHeight = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
        if (description != null) ...[
          const SizedBox(height: 12),
          Text(
            description!,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white.withValues(alpha: 0.9),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        ],
        const SizedBox(height: 24),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              height: imageHeight,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
