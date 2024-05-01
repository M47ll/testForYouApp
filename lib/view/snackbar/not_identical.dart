import 'package:get/get.dart';
import 'package:work_test/core/constant/color.dart';

notIdentical() {
  return Get.snackbar("error",
      "Passwords do not match. Please make sure both passwords are identical.",
      backgroundColor: AppColors.backgroundGradient[2],
      colorText: AppColors.white,
      snackPosition: SnackPosition.BOTTOM);
}
