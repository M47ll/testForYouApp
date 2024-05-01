import 'package:work_test/core/class/crud.dart';
import 'package:work_test/linkapi.dart';

class UpdateProfileData {
  Crud crud;
  UpdateProfileData(this.crud);
  getData({
    required String name,
    required String birthday,
    required String height,
    required String weight,
    required List<String> interests,
  }) async {
    var response = await crud.putData(
      APILink.updateProfile,
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
