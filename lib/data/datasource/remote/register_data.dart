import 'package:work_test/core/class/crud.dart';
import 'package:work_test/linkapi.dart';

class RegisterData {
  Crud crud;
  RegisterData(this.crud);
  getData({
    required String email,
    required String password,
    required String username,
  }) async {
    var response = await crud.postData(
      APILink.register,
      {
        "email": email.trim(),
        "username": username.trim(),
        "password": password.trim(),
      },
    );
    return response.fold((l) => l, (r) => r);
  }
}
