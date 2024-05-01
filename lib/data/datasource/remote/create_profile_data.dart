import 'package:work_test/core/class/crud.dart';
import 'package:work_test/linkapi.dart';

class CreateProfileData {
  Crud crud;
  CreateProfileData(this.crud);
  getData({
    required String name,
    required String birthday,
    required String height,
    required String weight,
    required List<String> interests,
  }) async {
    var response = await crud.postData(
      APILink.createProfile,
      {
        "name": name.trim(),
        "birthday": birthday.trim(),
        "height": height.trim(),
        "weight": weight.trim(),
        "interests": interests,
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
