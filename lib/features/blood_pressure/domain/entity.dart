import 'package:hunglydev_datn/features/app/data/user_model.dart';

class AlarmEntity {
  final String id;
  final DateTime time;

  const AlarmEntity({
    required this.id,
    required this.time,
  });
}

class BloodPressureEntity {
  final String key;
  final int systolic;
  final int diastolic;
  final int? dateTime;

  const BloodPressureEntity({
    required this.key,
    required this.systolic,
    required this.diastolic,
    this.dateTime,
  });
}

class BMIEntity {
  final String key;
  final double value;
  final int? dateTime;

  const BMIEntity({
    required this.key,
    required this.value,
    this.dateTime,
  });
}

class UserEntity {
  final UserModel userModel;
  const UserEntity({
    required this.userModel,
  });
}
