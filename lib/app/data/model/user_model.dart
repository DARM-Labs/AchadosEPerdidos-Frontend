import 'dart:convert';

List<UserModel> userModelfromRawJson(List str) =>
    List<UserModel>.from(str.map((x) => UserModel.fromJson(x)));

String userModeltoRawJson(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.curso,
    this.office,
    this.semestre,
    this.matricula,
    this.senha,
    this.contactNumber,
    this.urlImageUser,
    this.instant,
  });

  int? id;
  String? name;
  String? email;
  String? curso;
  String? office;
  String? semestre;
  String? matricula;
  String? senha;
  String? contactNumber;
  String? urlImageUser;
  String? instant;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        curso: json["curso"],
        office: json["office"],
        semestre: json["semestre"],
        matricula: json["matricula"],
        senha: json["senha"],
        contactNumber: json["contactNumber"],
        urlImageUser: json["urlImageUser"],
        instant: json["instant"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "curso": curso,
        "office": office,
        "semestre": semestre,
        "matricula": matricula,
        "senha": senha,
        "contactNumber": contactNumber,
        "urlImageUser": urlImageUser,
        "instant": instant
      };
}
