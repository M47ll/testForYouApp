import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/core/class/status_request.dart';
import 'package:work_test/core/constant/routes.dart';
import 'package:work_test/data/datasource/remote/login_data.dart';

abstract class LoginController extends GetxController {
  login();
  goToRegister();
  writing();
  showThePassword();
  goToProfile();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
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
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  //API
  @override
  login() async {
    if (statusRequest != StatusRequest.loading) {
      if (formState.currentState!.validate()) {
        statusRequest = StatusRequest.loading;
        update();
        var response = await loginData.getData(
          email: email.text,
          password: password.text,
        );
        statusRequest = StatusRequest.success;
        update();
        goToProfile();
      } else {
        update();
      }
    }
  }

  //Routing
  @override
  goToProfile() {
    Get.offNamed(AppRoute.profile);
  }

  @override
  goToRegister() {
    Get.offNamed(AppRoute.register);
  }

  //state
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
