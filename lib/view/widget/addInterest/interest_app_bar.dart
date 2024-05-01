import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/add_interest_controller.dart';
import 'package:work_test/core/constant/color.dart';

class InterestAppBar extends StatelessWidget {
  const InterestAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AddInterestControllerImp controller = Get.find();
    return GetBuilder<AddInterestControllerImp>(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.white,
              ),
              Text(
                " Back",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Text(
            "Save",
            style: TextStyle(
              fontSize: 20,
              foreground: Paint()
                ..shader = const LinearGradient(
                  colors: AppColors.blueGradient,
                ).createShader(
                  const Rect.fromLTWH(0, 0, 100, 0),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
