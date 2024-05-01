import 'package:get/get.dart';
import 'package:work_test/core/constant/routes.dart';
import 'package:work_test/view/screen/add_interest_view.dart';
import 'package:work_test/view/screen/login_view.dart';
import 'package:work_test/view/screen/profile_view.dart';
import 'package:work_test/view/screen/register_view.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: AppRoute.test, page: () => const ProfileView()),
  GetPage(name: AppRoute.profile, page: () => const ProfileView()),
  GetPage(name: AppRoute.login, page: () => const LoginView()),
  GetPage(name: AppRoute.register, page: () => const RegisterView()),
  GetPage(name: AppRoute.interest, page: () => const AddInterestView()),
];
