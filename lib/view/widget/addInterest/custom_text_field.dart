import 'package:flutter/material.dart';
import 'package:flutter_tagging_plus/flutter_tagging_plus.dart';
import 'package:get/get.dart';
import 'package:work_test/controller/add_interest_controller.dart';
import 'package:work_test/core/class/interest.dart';
import 'package:work_test/core/constant/color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AddInterestControllerImp controller = Get.find();
    return GetBuilder<AddInterestControllerImp>(
      builder: (_) => FlutterTagging<Interest>(
        initialItems: controller.interest,
        textFieldConfiguration: TextFieldConfiguration(
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: AppColors.textFieldBackground.withOpacity(0.06),
          ),
        ),
        findSuggestions: (String query) {
          return controller.findSuggestions(query);
        },
        additionCallback: (value) {
          return Interest(
            name: value,
            position: 0,
          );
        },
        onAdded: (language) {
          return Interest(name: language.name, position: -1);
        },
        configureSuggestion: (lang) {
          return SuggestionConfiguration(
            title: Text(lang.name),
            additionWidget: Chip(
              avatar: const Icon(
                Icons.add_circle,
                color: AppColors.white,
              ),
              label: const Text('Add New Interest'),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              backgroundColor: AppColors.containerBackground1.withOpacity(0.9),
            ),
          );
        },
        configureChip: (lang) {
          return ChipConfiguration(
            label: Text(
              lang.name,
              style: const TextStyle(color: AppColors.white),
            ),
            backgroundColor: AppColors.containerBackground1.withOpacity(0.9),
            deleteIconColor: AppColors.white,
          );
        },
        onChanged: () {
          controller.onChange();
        },
      ),
    );
  }
}
