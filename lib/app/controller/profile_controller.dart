import 'package:achadoseperdidosifce/app/data/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../data/repository/profile_repository.dart';
import '../ui/mobile/widgets/photo_modal_widget.dart';

class ProfileController extends GetxController {
  final ProfileRepository repository;
  ProfileController(this.repository);

  final formGlobalKey = GlobalKey<FormState>();

  var user = UserModel();
  var photoUser = ''.obs;
  var office = 'asdas'.obs;

  selectPhoto() {
    Get.bottomSheet(
        backgroundColor: Get.theme.colorScheme.background,
        isScrollControlled: true,
        PhotoUserModalWidget(
          onTapChoosePhoto: choosePhoto,
          onTapTakePhoto: takePhoto,
          onTapDelPhoto: photoUser.value != '' ? delPhoto : null,
        ));
  }

  final ImagePicker picker = ImagePicker();
  choosePhoto() async {
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    uploadPhotoUser(path: image!.path);
  }

  takePhoto() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    uploadPhotoUser(path: image!.path);
  }

  Future uploadPhotoUser({required String path}) async {
    await repository.firebaseStorageService
        .uploadPhotoUser(path: path)
        .then((value) => photoUser(value));
  }

  delPhoto() {
    Get.back();
  }
}
