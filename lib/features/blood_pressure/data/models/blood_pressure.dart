import 'package:hunglydev_datn/enums/enum.dart';

class BloodPressureModel {
  String? key;
  int? systolic;
  int? diastolic;
  int? pulse;
  int? type;
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
