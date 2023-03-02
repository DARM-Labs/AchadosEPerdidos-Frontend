import 'package:get/get.dart';
import '../../controller/auth_controller/sign_up_controller.dart';
import '../../data/provider/api.dart';
import '../../data/repository/auth_repository.dart';


class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
        () => SignUpController(AuthRepository(ClientApi())));
  }
}
