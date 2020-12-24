import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.name,
    this.similarity,
  });

  String name;
  double similarity;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    similarity: json["Similarity"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "Similarity": similarity,
  };
}
