import 'package:hunglydev_datn/features/app/data/user_model.dart';
import 'package:hunglydev_datn/features/blood_pressure/data/models/blood_pressure.dart';

class AlarmEntity {
  final String id;
  final DateTime time;

  const AlarmEntity({
    required this.id,
    required this.time,
  });
}

class BloodPressureEntity {
  final BloodPressureModel bloodPressureModel;

  const BloodPressureEntity({
    required this.bloodPressureModel,
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

class BloodPressureRangeEntity {
  final int sysMin;
  final int sysMax;
  final int diaMin;
  final int diaMax;

  const BloodPressureRangeEntity({
    this.sysMin = 0,
    this.sysMax = 0,
    this.diaMin = 0,
    this.diaMax = 0,
  });
}

class ChartSelectionEntity {
  final int groupIndex;
  final int xValue;
  final DateTime? minDate;
  final DateTime? maxDate;

  const ChartSelectionEntity({
    this.groupIndex = 0,
    this.xValue = 0,
    this.minDate,
    this.maxDate,
  });
}
