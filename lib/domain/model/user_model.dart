import 'package:hive/hive.dart';
import '../../common/config/hive_config/hive_constants.dart';

part 'user_model.g.dart';

@HiveType(typeId: HiveTypeConstants.userModel)
class UserModel extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  DateTime? birthDay;

  @HiveField(3)
  int? age;

  @HiveField(4)
  int gender;

  UserModel({
    this.id = 0,
    this.name = "",
    this.birthDay,
    this.age = 0,
    this.gender = 0,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'] as int,
        name: json['name'] as String,
        birthDay: DateTime.parse(json['birthDay']),
        gender: json['gender'] as int,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'birthDay': birthDay.toString(),
        'gender': gender,
      };
  @override
  String toString() {
    return 'id: $id ------------ name: $name ------------ birthDay: ${birthDay.toString()}, ------gender: $gender';
  }
}
