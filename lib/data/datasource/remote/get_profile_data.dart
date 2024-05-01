import 'package:work_test/core/class/crud.dart';
import 'package:work_test/linkapi.dart';

class GetProfileData {
  Crud crud;
  GetProfileData(this.crud);
  getData() async {
    var response = await crud.getData(APILink.getProfile, {});
    return response.fold((l) => l, (r) => r);
  }
}
