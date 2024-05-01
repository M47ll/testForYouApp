import 'package:flutter/material.dart';
import 'package:work_test/core/constant/color.dart';

ThemeData appTheme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    counterStyle: TextStyle(color: AppColors.white.withOpacity(0.4)),
    labelStyle: const TextStyle(color: AppColors.white),
    border: InputBorder.none,
    filled: true,
    fillColor: AppColors.white.withOpacity(0.06),
    hintStyle: TextStyle(
      fontWeight: FontWeight.w500,
      color: AppColors.white.withOpacity(0.4),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: Colors.transparent),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(color: AppColors.red),
    ),
    errorStyle: const TextStyle(color: AppColors.red),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: 'Inter',
    ),
  ),
);
