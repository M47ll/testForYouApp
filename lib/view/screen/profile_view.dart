import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/profile_controller.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/view/widget/profile/about_if_null.dart';
import 'package:work_test/view/widget/profile/about_on_editing.dart';
import 'package:work_test/view/widget/profile/about_with_data.dart';
import 'package:work_test/view/widget/profile/interest_if_null.dart';
import 'package:work_test/view/widget/profile/interest_with_data.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controller = Get.put(ProfileControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<ProfileControllerImp>(
        builder: (_) => Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backgroundGradient[2],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
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
                    ),
                    Expanded(
                        child: Center(
                            child: Text(
                      "@johndoe123",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ))),
                    Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 190,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.containerBackground1,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "@johndoe123",
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const AboutWithData(),
                const SizedBox(
                  height: 25,
                ),
                const AboutOnEditing(),
                const SizedBox(
                  height: 25,
                ),
                const AboutIfNull(),
                const SizedBox(
                  height: 25,
                ),
                const InterestIfNull(),
                const SizedBox(
                  height: 25,
                ),
                const InterestWithData(),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
