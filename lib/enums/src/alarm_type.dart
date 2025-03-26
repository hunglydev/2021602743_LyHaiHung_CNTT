part of '../enum.dart';

class AlarmTypeEnum {
  static AlarmType getBloodPressureTypeById(int? id) {
    if (id == null) {
      return AlarmType.heartRate;
    } else {
      return AlarmType.values.firstWhere(
        (type) => type.id == id,
        orElse: () => AlarmType.heartRate,
      );
    }
  }
}

// @HiveType(typeId: HiveTypeConstants.alarmType)
enum AlarmType {
  @HiveField(0)
  heartRate,
  @HiveField(1)
  bloodPressure,
  @HiveField(2)
  weightAndBMI,
}

extension AlarmTypeExtension on AlarmType {
  Color get color {
    switch (this) {
      case AlarmType.heartRate:
        return AppColor.red;
      case AlarmType.bloodPressure:
        return AppColor.primaryColor;
      case AlarmType.weightAndBMI:
        return AppColor.green;
    }
  }

  String get tr {
    switch (this) {
      case AlarmType.heartRate:
        return TranslationConstants.heartRate;
      case AlarmType.bloodPressure:
        return TranslationConstants.bloodPressure;
      case AlarmType.weightAndBMI:
        return TranslationConstants.weightAndBMI;
    }
  }

  String get trNotiDes {
    final int randomIndex = Random(DateTime.now().microsecondsSinceEpoch).nextInt(9);
    switch (this) {
      case AlarmType.heartRate:
        return TranslationConstants.heartRateNotiMsgs[randomIndex];
      case AlarmType.bloodPressure:
        return TranslationConstants.bloodPressureNotiMsgs[randomIndex];
      case AlarmType.weightAndBMI:
        return TranslationConstants.weightAndBMINotiMsgs[randomIndex];
    }
  }

  // String get notificationRoute {
  //   switch (this) {
  //     case AlarmType.heartRate:
  //       return AppRoute.heartBeatScreen;
  //     case AlarmType.bloodPressure:
  //       return AppRoute.bloodPressureScreen;
  //     case AlarmType.weightAndBMI:
  //       return AppRoute.weightBMI;
  //   }
  // }

  static AlarmType fromString(String str) {
    try {
      return AlarmType.values.where((element) => element.toString() == "AlarmType.$str").first;
    } on StateError catch (_) {
      return AlarmType.heartRate;
    }
  }

  int get id {
    switch (this) {
      case AlarmType.heartRate:
        return 0;
      case AlarmType.bloodPressure:
        return 1;
      case AlarmType.weightAndBMI:
        return 3;
    }
  }

  String get icon {
    switch (this) {
      case AlarmType.heartRate:
        return AppImage.icHeartRate;
      case AlarmType.bloodPressure:
        return AppImage.icBloodPressure;
      case AlarmType.weightAndBMI:
        return AppImage.icWeightAndBmi;
    }
  }
}
