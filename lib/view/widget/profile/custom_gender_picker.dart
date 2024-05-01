import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/profile_controller.dart';
import 'package:work_test/core/constant/color.dart';

class CustomGenderPicker extends StatelessWidget {
  const CustomGenderPicker({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.find();
    return GetBuilder<ProfileControllerImp>(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Gender:",
            style: TextStyle(
              fontSize: 15,
              color: AppColors.white.withOpacity(0.33),
            ),
          ),
          SizedBox(
            width: Get.width / 2,
            child: DropdownButtonFormField<String>(
              dropdownColor: AppColors.backgroundGradient[2],
              decoration: InputDecoration(
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
              hint: Text(
                "Select Gender",
                style: TextStyle(
                    color: AppColors.white.withOpacity(0.3), fontSize: 14),
              ),
              style: const TextStyle(color: AppColors.white),
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: AppColors.white,
              ),
              value: controller.gender,
              isExpanded: true,
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              onChanged: (val) {
                controller.gender = val!;
              },
              items: controller.genderList.map<DropdownMenuItem<String>>(
                (value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
