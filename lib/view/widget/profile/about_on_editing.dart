import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/profile_controller.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/view/widget/profile/custom_add_info.dart';
import 'package:work_test/view/widget/profile/custom_gender_picker.dart';

class AboutOnEditing extends StatelessWidget {
  const AboutOnEditing({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.find();
    return GetBuilder<ProfileControllerImp>(
      builder: (_) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
          color: AppColors.containerBackground2,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "About",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors:
                          AppColors.goldenGradient, // Example gradient colors
                    ).createShader(bounds);
                  },
                  child: const Text(
                    "Save & Update",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: AppColors.containerBackground1,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        colors: AppColors.goldenGradient,
                      ).createShader(bounds);
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors
                          .white, // Make sure the icon color is white to apply the gradient
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Add image",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomAddInfo(
              mainText: "Display name:",
              hintText: "Enter name",
              textController: controller.name,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomGenderPicker(),
            const SizedBox(
              height: 10,
            ),
            CustomAddInfo(
              mainText: "Birthday:",
              hintText: "DD MM YYYY",
              textController: controller.dateController,
              dateType: true,
              onTab: () => controller.selectDate(context),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAddInfo(
              mainText: "Horoscope:",
              hintText: "--",
              textController: controller.horoscope,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAddInfo(
              mainText: "Zodiac:",
              hintText: "--",
              textController: controller.zodiac,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAddInfo(
              mainText: "Height:",
              hintText: "Add height",
              textController: controller.height,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomAddInfo(
              mainText: "Weight:",
              hintText: "Add weight",
              textController: controller.weight,
            ),
          ],
        ),
      ),
    );
  }
}
