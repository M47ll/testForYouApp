import 'package:flutter/material.dart';
import 'package:work_test/core/constant/color.dart';

class SwitchLoginRegister extends StatelessWidget {
  final Function() onTab;
  final String whiteText;
  final String goldenText;
  const SwitchLoginRegister(
      {super.key,
      required this.onTab,
      required this.whiteText,
      required this.goldenText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          whiteText,
          //"No account? ",
          style: const TextStyle(
            fontSize: 15,
            decoration: TextDecoration.underline,
          ),
        ),
        InkWell(
          onTap: () => onTab,
          child: Text(
            //"Register here",
            goldenText,
            style: TextStyle(
              fontSize: 15,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: AppColors.goldenGradient,
                ).createShader(
                  const Rect.fromLTWH(0, 0, 100, 0),
                ), // Adjust the width of the gradient as needed
              decoration: TextDecoration.underline,
              decorationColor: AppColors.goldenGradient.last,
            ),
          ),
        )
      ],
    );
  }
}
