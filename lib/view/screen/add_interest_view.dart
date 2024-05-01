import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/add_interest_controller.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/view/widget/addInterest/custom_text_field.dart';
import 'package:work_test/view/widget/addInterest/interest_app_bar.dart';

class AddInterestView extends StatelessWidget {
  const AddInterestView({super.key});

  @override
  Widget build(BuildContext context) {
    AddInterestControllerImp controller = Get.put(AddInterestControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<AddInterestControllerImp>(
        builder: (_) => Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              radius: 2.2,
              center: Alignment.topRight,
              colors: AppColors.backgroundGradient,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const InterestAppBar(),
              const SizedBox(height: 70),
              Text(
                "Tell everyone about yourself",
                style: TextStyle(
                  fontSize: 20,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: AppColors.goldenGradient,
                    ).createShader(
                      const Rect.fromLTWH(0, 0, 100, 0),
                    ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "What interest you?",
                style: TextStyle(fontSize: 26),
              ),
              const SizedBox(height: 20),
              const CustomTextField(),
            ],
          ),
        ),
      ),
    );
  }
}
