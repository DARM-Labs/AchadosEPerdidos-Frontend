import 'package:achadoseperdidosifce/app/data/provider/api.dart';
import 'package:get/get.dart';

import '../../controller/auth_controller/forgot_password_controller.dart';
import '../../data/repository/forgot_password_repository.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
        () => ForgotPasswordController(ForgotPasswordRepository(ClientApi())));
  }
}
