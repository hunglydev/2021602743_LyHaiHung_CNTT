import 'package:hive/hive.dart';
import 'package:hunglydev_datn/config/hive_config/hive_constant.dart';
import 'package:hunglydev_datn/enums/enum.dart';

part 'blood_pressure.g.dart';

@HiveType(typeId: HiveTypeConstants.bloodPressureModel)
class BloodPressureModel extends HiveObject {
  @override
  @HiveField(0)
  String? key;
  @HiveField(1)
  int? systolic;
  @HiveField(2)
  int? diastolic;
  @HiveField(3)
  int? pulse;
  @HiveField(4)
  int? type;
  @HiveField(5)
  int? dateTime;

  BloodPressureModel({
    this.key,
    this.systolic,
    this.diastolic,
    this.pulse,
    this.type,
    this.dateTime,
  });

  DateTime get bloodPressDate => DateTime.fromMillisecondsSinceEpoch(dateTime!);
  BloodPressureType get bloodType => BloodPressureTyeEnum.getBloodPressureTypeById(type!);
}
