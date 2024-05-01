import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/bindings/intial_bindings.dart';
import 'package:work_test/core/constant/app_theme.dart';
import 'package:work_test/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'work_test',
      initialBinding: InitialBindings(),
      // routes: routes,
      getPages: routes,
      theme: appTheme,
    );
  }
}
