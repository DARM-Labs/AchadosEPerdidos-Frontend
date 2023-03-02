import 'package:achadoseperdidosifce/app/data/service/firebase_storage_service.dart';

class ProfileRepository {
  final FirebaseStorageService firebaseStorageService;

  ProfileRepository(this.firebaseStorageService);

  Future<String> uploadPhotoUser(
      {required String path}) {
    return firebaseStorageService.uploadPhotoUser(path: path);
  }
}
