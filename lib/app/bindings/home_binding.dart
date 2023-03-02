import 'package:achadoseperdidosifce/app/data/provider/api.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../data/repository/home_repository.dart';


class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
        () => HomeController(HomeRepository(ClientApi())));
  }
}
