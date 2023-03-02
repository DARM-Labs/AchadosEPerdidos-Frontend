import 'package:achadoseperdidosifce/app/data/service/firebase_storage_service.dart';
import 'package:get/get.dart';

import '../controller/profile_controller.dart';

import '../data/repository/profile_repository.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
        () => ProfileController(ProfileRepository(FirebaseStorageService())));
  }
}
