import 'package:flutter/material.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/core/functions/valid_input.dart';

class CustomTextField extends StatelessWidget {
  final ctrl;
  final TextEditingController textController;
  final bool passwordField;
  final String hintText;
  const CustomTextField({
    required this.textController,
    this.passwordField = false,
    required this.hintText,
    required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (_) => ctrl.update(),
      controller: textController,
      validator: (value) {
        if (passwordField) {
          return validInput(textController.text, 8, 12, "password");
        }
        if (hintText == "Create Username") {
          return validInput(textController.text, 6, 10, "username");
        }
        return validInput(textController.text, 5, 30, "email");
      },
      maxLength: passwordField
          ? 12
          : hintText == "Create Username"
              ? 10
              : 30,
      obscureText: passwordField ? ctrl.showPassword : false,
      cursorColor: AppColors.white,
      style: const TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        hintText: hintText,
        suffix: passwordField
            ? ctrl.showPassword
                ? InkWell(
                    onTap: () => ctrl.showThePassword(),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: AppColors.goldenGradient,
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        Icons.visibility_off_outlined,
                        color: Colors
                            .white, // Make sure the icon color is white to apply the gradient
                      ),
                    ),
                  )
                : InkWell(
                    onTap: () => ctrl.showThePassword(),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: AppColors.goldenGradient,
                        ).createShader(bounds);
                      },
                      child: const Icon(
                        Icons.visibility_outlined,
                        color: Colors
                            .white, // Make sure the icon color is white to apply the gradient
                      ),
                    ),
                  )
            : null,
      ),
    );
  }
}
