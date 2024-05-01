import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/core/class/status_request.dart';
import 'package:work_test/core/constant/routes.dart';
import 'package:work_test/data/datasource/remote/register_data.dart';
import 'package:work_test/view/snackbar/not_identical.dart';

abstract class RegisterController extends GetxController {
  register();
  goToLogin();
  writing();
  showThePassword();
}

class RegisterControllerImp extends RegisterController {
  RegisterData registerData = RegisterData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password1;
  late TextEditingController password2;
  bool showPassword = true;
  StatusRequest statusRequest = StatusRequest.none;

  //PassShow
  @override
  showThePassword() {
    showPassword = !showPassword;
    update();
  }

  //toLightButton
  @override
  bool writing() {
    if (email.text.isNotEmpty &&
        username.text.isNotEmpty &&
        password1.text.isNotEmpty &&
        password2.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //API
  @override
  register() async {
    if (statusRequest != StatusRequest.loading) {
      if (formState.currentState!.validate()) {
        if (password1.text != password2.text) {
          return notIdentical();
        }
        statusRequest = StatusRequest.loading;
        update();
        var response = await registerData.getData(
          email: email.text,
          password: password1.text,
          username: username.text,
        );
        statusRequest = StatusRequest.success;
        update();
        goToLogin();
      } else {
        update();
      }
    }
  }

  //Routing
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  //state
  @override
  void onInit() {
    email = TextEditingController();
    username = TextEditingController();
    password1 = TextEditingController();
    password2 = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    password1.dispose();
    password2.dispose();
    super.dispose();
  }
}
