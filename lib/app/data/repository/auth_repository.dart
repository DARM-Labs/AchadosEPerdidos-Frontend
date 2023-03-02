import 'package:achadoseperdidosifce/app/data/model/user_model.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../provider/api.dart';

class AuthRepository {
  final ClientApi api;

  AuthRepository(this.api);

  Future<Response<UserModel>> login(
      {required String email, required String password}) {
    return api.login(email: email, password: password);
  }

  Future<Response<UserModel>> signUp({required UserModel user}) {
    return api.signUp(user);
  }
}
