import 'package:achadoseperdidosifce/app/ui/mobile/pages/about_page.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/add_founds_page.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/add_loses_pages.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/authentication_pages/forgot_password_pages/insert_email_forgot_password_page.dart';

import 'package:achadoseperdidosifce/app/ui/mobile/pages/founds_objects_page.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/loses_objects_page.dart';
import 'package:achadoseperdidosifce/app/ui/mobile/pages/profile_page.dart';
import 'package:get/get.dart';
import '../bindings/auth_bindings/forgot_password_binding.dart';
import '../bindings/auth_bindings/login_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/auth_bindings/sign_up_binding.dart';
import '../bindings/profile_binding.dart';
import '../ui/mobile/pages/authentication_pages/forgot_password_pages/check_code_forgot_password_page.dart';
import '../ui/mobile/pages/authentication_pages/forgot_password_pages/new_password_forgot_password_page.dart';
import '../ui/mobile/pages/authentication_pages/forgot_password_pages/success_forgot_password_page.dart';

import '../ui/mobile/pages/authentication_pages/login_page.dart';
import '../ui/mobile/pages/authentication_pages/sign_up_page.dart';
import '../ui/mobile/pages/home_page.dart';
import '../ui/mobile/pages/splash_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
    ),
    GetPage(
        name: Routes.LOGIN,
        page: () => const LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.SIGN_UP,
        page: () => const SignUpPage(),
        binding: SignUpBinding()),
    GetPage(
        name: Routes.INSERT_EMAIL_FORGOT_PASSWORD,
        page: () => const InsertEmailForgotPasswordPage(),
        binding: ForgotPasswordBinding()),
    GetPage(
        name: Routes.CHECK_CODE_FORGOT_PASSWORD,
        page: () => const CheckCodeForgotPasswordPage(),
        binding: ForgotPasswordBinding()),
    GetPage(
        name: Routes.NEW_PASSWORD_FORGOT_PASSWORD,
        page: () => const NewPasswordForgotPasswordPage(),
        binding: ForgotPasswordBinding()),
    GetPage(
      name: Routes.SUCCESS_FORGOT_PASSWORD,
      page: () => const SuccessForgotPasswordPage(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.LOSES_OBJECTS,
      page: () => const LosesObjectsPage(),
    ),
    GetPage(
      name: Routes.FOUNDS_OBJECTS,
      page: () => const FoundsObjectsWidget(),
    ),
    GetPage(
      name: Routes.ABOUT,
      page: () => const AboutPage(),
    ),
    GetPage(
      name: Routes.ADD_FOUNDS,
      page: () => const AddFoundsPage(),
    ),
    GetPage(
      name: Routes.ADD_LOSES,
      page: () => const AddLosesPage(),
    ),
  ];
}
