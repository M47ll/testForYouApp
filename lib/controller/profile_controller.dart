import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_test/data/datasource/remote/create_profile_data.dart';
import 'package:work_test/data/datasource/remote/get_profile_data.dart';

import '../core/class/status_request.dart';

abstract class ProfileController extends GetxController {
  addProfileData();
}

class ProfileControllerImp extends ProfileController {
  GetProfileData getProfileData = GetProfileData(Get.find());
  CreateProfileData createProfileData = CreateProfileData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController name;
  String? gender;
  late TextEditingController horoscope;
  late TextEditingController zodiac;
  late TextEditingController height;
  late TextEditingController weight;
  late List<String> genderList;

  //API
  @override
  addProfileData() async {
    if (name.text.isNotEmpty &&
        horoscope.text.isNotEmpty &&
        zodiac.text.isNotEmpty &&
        height.text.isNotEmpty) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await createProfileData.getData(
        name: name.text.toString(),
        birthday: dateController.text.toString(),
        weight: weight.text.toString(),
        height: height.text.toString(),
        interests: [],
      );
      statusRequest = StatusRequest.success;
      update();
    }
  }

  TextEditingController dateController = TextEditingController();
  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime(2015),
      firstDate: DateTime(1940),
      lastDate: DateTime(2017),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      dateController.text =
          '${selectedDate?.day.toString().padLeft(2, '0')}-${selectedDate?.month.toString().padLeft(2, '0')}-${selectedDate?.year.toString()}';

      update();
    }
  }

  //state
  @override
  void onInit() {
    name = TextEditingController();
    horoscope = TextEditingController();
    zodiac = TextEditingController();
    height = TextEditingController();
    weight = TextEditingController();
    genderList = ["MALE", "FEMALE"];
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    horoscope.dispose();
    zodiac.dispose();
    height.dispose();
    weight.dispose();
    super.dispose();
  }
}
