import 'package:achadoseperdidosifce/app/configs/api_config.dart';
import 'package:achadoseperdidosifce/app/data/model/user_model.dart';
import 'package:get/get.dart';

const baseUrl = '${ApiConfig.urlApi}/users';

class ClientApi extends GetConnect {
  Future<Response<UserModel>> login(
          {required String email, required String password}) =>
      get('$baseUrl/login/$email,$password', decoder: (body) {
        return UserModel.fromJson(body);
      });

  Future<Response<UserModel>> signUp(UserModel user) =>
      post('$baseUrl/createUser/', user.toJson(), decoder: (body) {
        return UserModel.fromJson(body);
      });
}
