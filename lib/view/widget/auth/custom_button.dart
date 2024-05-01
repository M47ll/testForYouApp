import 'package:flutter/material.dart';
import 'package:work_test/core/constant/color.dart';

class CustomButton extends StatelessWidget {
  final Function() onTab;
  final Function() writing;
  final String text;
  const CustomButton(
      {super.key,
      required this.onTab,
      required this.text,
      required this.writing});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: writing()
                ? AppColors.buttonGradient
                : [
                    AppColors.buttonGradient[1].withOpacity(0.5),
                    AppColors.buttonGradient[2].withOpacity(0.5),
                  ],
          ),
          boxShadow: writing()
              ? [
                  BoxShadow(
                    color: AppColors.buttonGradient[1].withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: const Offset(0, 5), // Offset of the shadow
                  ),
                ]
              : null,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
