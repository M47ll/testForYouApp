import 'package:get/get.dart';
import 'package:work_test/core/class/crud.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Start
    Get.put(Crud());
  }
}
