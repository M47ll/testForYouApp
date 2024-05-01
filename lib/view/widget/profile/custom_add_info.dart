import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/core/constant/color.dart';

class CustomAddInfo extends StatelessWidget {
  final String hintText;
  final String mainText;
  final bool dateType;
  final Function()? onTab;
  final TextEditingController textController;
  const CustomAddInfo(
      {super.key,
      required this.hintText,
      required this.mainText,
      required this.textController,
      this.dateType = false,
      this.onTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainText,
          style: TextStyle(
            fontSize: 15,
            color: AppColors.white.withOpacity(0.33),
          ),
        ),
        SizedBox(
          width: Get.width / 2,
          child: TextFormField(
            readOnly: dateType,
            onTap: dateType ? onTab : null,
            style: const TextStyle(color: AppColors.white),
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: AppColors.white.withOpacity(0.3), fontSize: 14),
              filled: true,
              fillColor: AppColors.textFieldBackground.withOpacity(0.06),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: AppColors.white.withOpacity(0.22)),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: AppColors.white.withOpacity(0.22)),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
