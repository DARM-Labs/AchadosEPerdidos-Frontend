import 'dart:io';

import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class FirebaseStorageService extends GetxService {
  Future<String> uploadPhotoUser({required String path}) async {
    var uuid = const Uuid().v4();
    final FirebaseStorage storage = FirebaseStorage.instance;
    File file = File(path);
    try {
      String ref = "$uuid.jpg";
      await storage.ref(ref).putFile(file);
      return ref;
    } on FirebaseException catch (e) {
      throw Get.snackbar("Error", e.message.toString());
    }
  }
}
