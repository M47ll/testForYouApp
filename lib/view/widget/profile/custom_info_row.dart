import 'package:flutter/material.dart';
import 'package:work_test/core/constant/color.dart';

class CustomInfoRow extends StatelessWidget {
  final String title;
  final String content;
  const CustomInfoRow({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white.withOpacity(0.33),
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
