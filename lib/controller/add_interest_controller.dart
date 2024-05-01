import 'package:get/get.dart';
import 'package:work_test/controller/profile_controller.dart';
import 'package:work_test/core/class/interest.dart';
import 'package:work_test/core/class/status_request.dart';
import 'package:work_test/data/datasource/remote/update_profile_data.dart';

abstract class AddInterestController extends GetxController {
  onChange();
  findSuggestions(String query);
  addToInterest();
}

class AddInterestControllerImp extends AddInterestController {
  late List<Interest> interest;
  StatusRequest statusRequest = StatusRequest.none;
  UpdateProfileData updateProfileData = UpdateProfileData(Get.find());
  String selectedValuesJson = 'Nothing to show';
  late Map<String, String> arguments;

  @override
  onChange() {
    selectedValuesJson = interest
        .map<String>((lang) => '\n${lang.toJson()}')
        .toList()
        .toString();
    selectedValuesJson = selectedValuesJson.replaceFirst('}]', '}\n]');
    update();
  }

  @override
  List<Interest> findSuggestions(String query) {
    return [
      const Interest(name: 'Coding', position: 1),
      const Interest(name: 'Basketball', position: 2),
      const Interest(name: 'Football', position: 3),
      const Interest(name: 'Reading', position: 4),
      const Interest(name: 'Cooking', position: 5),
      const Interest(name: 'Gaming', position: 6),
      const Interest(name: 'Traveling', position: 7),
      const Interest(name: 'Music', position: 8),
      const Interest(name: 'Photography', position: 9),
      const Interest(name: 'Fitness', position: 10),
    ]
        .where((interest) =>
            interest.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  //API
  @override
  addToInterest() async {
    if (interest.isNotEmpty) {
      statusRequest = StatusRequest.loading;
      update();
      List<String> interestNames =
          interest.map((interest) => interest.name).toList();
      var response = await updateProfileData.getData(
        name: arguments['name']!,
        birthday: arguments['birthday']!,
        weight: arguments['weight']!,
        height: arguments['height']!,
        interests: interestNames,
      );
      statusRequest = StatusRequest.success;
      update();
      ProfileControllerImp ctrl = Get.find();
      ctrl.update();
      Get.back();
    } else {
      Get.back();
    }
  }

  //state
  @override
  void onInit() {
    arguments = Get.arguments ?? {};
    interest = [];
    super.onInit();
  }

  @override
  void dispose() {
    interest.clear();
    super.dispose();
  }
}
