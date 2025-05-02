import 'package:flutter/material.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

import '../../presentation/theme/app_color.dart';

class BloodPressureTyeEnum {
  static BloodPressureType getBloodPressureTypeById(int? id) {
    if (id == null) {
      return BloodPressureType.normal;
    } else {
      return BloodPressureType.values.firstWhere(
        (type) => type.id == id,
        orElse: () => BloodPressureType.normal,
      );
    }
  }
}

enum BloodPressureType {
  hypotension,
  normal,
  elevated,
  hypertensionStage1,
  hypertensionStage2,
  hypertensionCrisis,
}

extension BloodPressureTypeExtension on BloodPressureType {
  int get id {
    switch (this) {
      case BloodPressureType.hypotension:
        return 0;
      case BloodPressureType.normal:
        return 1;
      case BloodPressureType.elevated:
        return 2;
      case BloodPressureType.hypertensionStage1:
        return 3;
      case BloodPressureType.hypertensionStage2:
        return 4;
      case BloodPressureType.hypertensionCrisis:
        return 5;
    }
  }

  String get name {
    switch (this) {
      case BloodPressureType.hypotension:
        return AppLocalization.current.hypotension;
      case BloodPressureType.normal:
        return AppLocalization.current.normal;
      case BloodPressureType.elevated:
        return AppLocalization.current.elevated;
      case BloodPressureType.hypertensionStage1:
        return AppLocalization.current.hypertensionStage1;
      case BloodPressureType.hypertensionStage2:
        return AppLocalization.current.hypertensionStage2;
      case BloodPressureType.hypertensionCrisis:
        return AppLocalization.current.hypertensionCrisis;
    }
  }

  String get messageRange {
    switch (this) {
      case BloodPressureType.hypotension:
        return AppLocalization.current.systolicRangeOrDiastolicRange("<90", "<60");
      case BloodPressureType.normal:
        return AppLocalization.current.systolicRangeOrDiastolicRange("90-110", "60-79");
      case BloodPressureType.elevated:
        return AppLocalization.current.systolicRangeOrDiastolicRange("120-129", "80-79");
      case BloodPressureType.hypertensionStage1:
        return AppLocalization.current.systolicRangeOrDiastolicRange("130-139", "80-89");
      case BloodPressureType.hypertensionStage2:
        return AppLocalization.current.systolicRangeOrDiastolicRange("140-180", "90-120");
      case BloodPressureType.hypertensionCrisis:
        return AppLocalization.current.systolicRangeOrDiastolicRange(">180", ">120");
    }
  }

  String get sortMessageRange {
    switch (this) {
      case BloodPressureType.hypotension:
        return AppLocalization.current.sysAndDIA("<90", "<60");
      case BloodPressureType.normal:
        return AppLocalization.current.sysAndDIA("90-110", "60-79");
      case BloodPressureType.elevated:
        return AppLocalization.current.sysAndDIA("120-129", "80-79");
      case BloodPressureType.hypertensionStage1:
        return AppLocalization.current.sysAndDIA("130-139", "80-89");
      case BloodPressureType.hypertensionStage2:
        return AppLocalization.current.sysAndDIA("140-180", "90-120");
      case BloodPressureType.hypertensionCrisis:
        return AppLocalization.current.sysAndDIA(">180", ">120");
    }
  }

  String get message {
    switch (this) {
      case BloodPressureType.hypotension:
        return AppLocalization.current.hypotensionMessage;
      case BloodPressureType.normal:
        return AppLocalization.current.normalMessage;
      case BloodPressureType.elevated:
        return AppLocalization.current.elevatedMessage;
      case BloodPressureType.hypertensionStage1:
        return AppLocalization.current.hypertensionStage1Message;
      case BloodPressureType.hypertensionStage2:
        return AppLocalization.current.hypertensionStage2Message;
      case BloodPressureType.hypertensionCrisis:
        return AppLocalization.current.hypertensionCrisisMessage;
    }
  }

  Color get color {
    switch (this) {
      case BloodPressureType.hypotension:
        return AppColor.primaryColor;
      case BloodPressureType.normal:
        return AppColor.green;
      case BloodPressureType.elevated:
        return AppColor.gold;
      case BloodPressureType.hypertensionStage1:
        return AppColor.lightOrange;
      case BloodPressureType.hypertensionStage2:
        return AppColor.orange;
      case BloodPressureType.hypertensionCrisis:
        return AppColor.lightRed;
    }
  }
}
