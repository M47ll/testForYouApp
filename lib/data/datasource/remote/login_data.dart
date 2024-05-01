import 'package:work_test/core/class/crud.dart';
import 'package:work_test/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  getData({
    required String email,
    required String password,
  }) async {
    var response = await crud.postData(
      APILink.login,
      {
        "email": email.toString().trim(),
        "username": "string",
        "password": password.toString().trim(),
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
