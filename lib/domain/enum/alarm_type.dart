import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

import '../../common/config/hive_config/hive_constants.dart';
import '../../common/constants/app_image.dart';
import '../../common/constants/app_route.dart';
import '../../presentation/theme/app_color.dart';

part 'alarm_type.g.dart';

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

@HiveType(typeId: HiveTypeConstants.alarmType)
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
        return AppLocalization.current.heartRate;
      case AlarmType.bloodPressure:
        return AppLocalization.current.bloodPressure;
      case AlarmType.weightAndBMI:
        return AppLocalization.current.weightAndBMI;
    }
  }

  String getTranslatedHeartRateNoti(int index) {
    switch (index) {
      case 0:
        return AppLocalization.current.heartRateNoti0;
      case 1:
        return AppLocalization.current.heartRateNoti1;
      case 2:
        return AppLocalization.current.heartRateNoti2;
      case 3:
        return AppLocalization.current.heartRateNoti3;
      case 4:
        return AppLocalization.current.heartRateNoti4;
      case 5:
        return AppLocalization.current.heartRateNoti5;
      case 6:
        return AppLocalization.current.heartRateNoti6;
      case 7:
        return AppLocalization.current.heartRateNoti7;
      case 8:
        return AppLocalization.current.heartRateNoti8;
      case 9:
        return AppLocalization.current.heartRateNoti9;
      default:
        return AppLocalization.current.heartRateNoti0;
    }
  }

  String getTranslatedBloodPressureNotiMsgss(int index) {
    switch (index) {
      case 0:
        return AppLocalization.current.bloodPressureNoti0;
      case 1:
        return AppLocalization.current.bloodPressureNoti1;
      case 2:
        return AppLocalization.current.bloodPressureNoti2;
      case 3:
        return AppLocalization.current.bloodPressureNoti3;
      case 4:
        return AppLocalization.current.bloodPressureNoti4;
      case 5:
        return AppLocalization.current.bloodPressureNoti5;
      case 6:
        return AppLocalization.current.bloodPressureNoti6;
      case 7:
        return AppLocalization.current.bloodPressureNoti7;
      case 8:
        return AppLocalization.current.bloodPressureNoti8;
      case 9:
        return AppLocalization.current.bloodPressureNoti9;
      default:
        return AppLocalization.current.bloodPressureNoti0;
    }
  }

  String getTranslatedWeightAndBMINotiMsgs(int index) {
    switch (index) {
      case 0:
        return AppLocalization.current.weightAndBMINoti0;
      case 1:
        return AppLocalization.current.weightAndBMINoti1;
      case 2:
        return AppLocalization.current.weightAndBMINoti2;
      case 3:
        return AppLocalization.current.weightAndBMINoti3;
      case 4:
        return AppLocalization.current.weightAndBMINoti4;
      case 5:
        return AppLocalization.current.weightAndBMINoti5;
      case 6:
        return AppLocalization.current.weightAndBMINoti6;
      case 7:
        return AppLocalization.current.weightAndBMINoti7;
      case 8:
        return AppLocalization.current.weightAndBMINoti8;
      case 9:
        return AppLocalization.current.weightAndBMINoti9;
      default:
        return AppLocalization.current.weightAndBMINoti0;
    }
  }

  String get trNotiDes {
    final int randomIndex = Random(DateTime.now().microsecondsSinceEpoch).nextInt(9);
    switch (this) {
      case AlarmType.heartRate:
        return getTranslatedHeartRateNoti(randomIndex);
      case AlarmType.bloodPressure:
        return getTranslatedBloodPressureNotiMsgss(randomIndex);
      case AlarmType.weightAndBMI:
        return getTranslatedWeightAndBMINotiMsgs(randomIndex);
    }
  }

  String get notificationRoute {
    switch (this) {
      case AlarmType.heartRate:
        return AppRoute.heartBeatScreen;
      case AlarmType.bloodPressure:
        return AppRoute.bloodPressureScreen;
      case AlarmType.weightAndBMI:
        return AppRoute.weightBMI;
    }
  }

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
        return AppImage.ic_heart_rate;
      case AlarmType.bloodPressure:
        return AppImage.ic_blood_pressure;
      case AlarmType.weightAndBMI:
        return AppImage.ic_weight_and_bmi;
    }
  }
}
