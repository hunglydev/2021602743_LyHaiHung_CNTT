import 'package:hive/hive.dart';

class UserModel extends HiveObject {
  int? age;
  String? genderId;

  UserModel({
    this.age,
    this.genderId,
  });

  factory UserModel.init() {
    return UserModel(age: 0, genderId: '');
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    age = json['age'] as int?;
    genderId = json['genderId'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['age'] = age;
    json['genderId'] = genderId;
    return json;
  }
}
