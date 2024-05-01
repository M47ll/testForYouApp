import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/auth/login_controller.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/view/widget/auth/custom_button.dart';
import 'package:work_test/view/widget/auth/custom_text_field.dart';
import 'package:work_test/view/widget/auth/switch_login_register.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formState,
        child: GetBuilder<LoginControllerImp>(
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Row(
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
                const SizedBox(height: 50),
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: "Enter Username/Email",
                  textController: controller.email,
                  ctrl: controller,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hintText: "Enter Password",
                  textController: controller.password,
                  passwordField: true,
                  ctrl: controller,
                ),
                const SizedBox(height: 30),
                GetBuilder<LoginControllerImp>(
                  builder: (_) => CustomButton(
                    writing: () => controller.writing(),
                    onTab: () => controller.login(),
                    text: "Login",
                  ),
                ),
                const SizedBox(height: 50),
                SwitchLoginRegister(
                  onTab: () => controller.goToRegister(),
                  whiteText: "No account? ",
                  goldenText: "Register here",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
