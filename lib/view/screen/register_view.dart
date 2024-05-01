import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/auth/register_controller.dart';
import 'package:work_test/core/constant/color.dart';
import 'package:work_test/view/widget/auth/custom_button.dart';
import 'package:work_test/view/widget/auth/custom_text_field.dart';
import 'package:work_test/view/widget/auth/switch_login_register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp controller = Get.put(RegisterControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formState,
        child: GetBuilder<RegisterControllerImp>(
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
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
                    "Register",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    hintText: "Enter Email",
                    textController: controller.email,
                    ctrl: controller,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Create Username",
                    textController: controller.username,
                    ctrl: controller,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Create Password",
                    textController: controller.password1,
                    passwordField: true,
                    ctrl: controller,
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    hintText: "Confirm Password",
                    textController: controller.password2,
                    passwordField: true,
                    ctrl: controller,
                  ),
                  const SizedBox(height: 30),
                  GetBuilder<RegisterControllerImp>(
                    builder: (_) => CustomButton(
                      writing: () => controller.writing(),
                      onTab: () => controller.register(),
                      text: "Register",
                    ),
                  ),
                  const SizedBox(height: 50),
                  SwitchLoginRegister(
                    onTab: () => controller.goToLogin(),
                    whiteText: "Have an account? ",
                    goldenText: "Login here",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
