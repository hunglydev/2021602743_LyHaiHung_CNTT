part of '../enum.dart';


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
        return TranslationConstants.hypotension;
      case BloodPressureType.normal:
        return TranslationConstants.normal;
      case BloodPressureType.elevated:
        return TranslationConstants.elevated;
      case BloodPressureType.hypertensionStage1:
        return TranslationConstants.hypertensionStage1;
      case BloodPressureType.hypertensionStage2:
        return TranslationConstants.hypertensionStage2;
      case BloodPressureType.hypertensionCrisis:
        return TranslationConstants.hypertensionCrisis;
    }
  }

  String get messageRange {
    switch (this) {
      case BloodPressureType.hypotension:
        return TranslationConstants.systolicRangeOrDiastolicRange;
      case BloodPressureType.normal:
        return TranslationConstants.systolicRangeOrDiastolicRange;
      case BloodPressureType.elevated:
        return TranslationConstants.systolicRangeOrDiastolicRange;
      case BloodPressureType.hypertensionStage1:
        return TranslationConstants.systolicRangeOrDiastolicRange;
      case BloodPressureType.hypertensionStage2:
        return TranslationConstants.systolicRangeOrDiastolicRange;
      case BloodPressureType.hypertensionCrisis:
        return TranslationConstants.systolicRangeOrDiastolicRange;
    }
  }

  String get sortMessageRange {
    switch (this) {
      case BloodPressureType.hypotension:
        return TranslationConstants.sysAndDIA;
      case BloodPressureType.normal:
        return TranslationConstants.sysAndDIA;
      case BloodPressureType.elevated:
        return TranslationConstants.sysAndDIA;
      case BloodPressureType.hypertensionStage1:
        return TranslationConstants.sysAndDIA;
      case BloodPressureType.hypertensionStage2:
        return TranslationConstants.sysAndDIA;
      case BloodPressureType.hypertensionCrisis:
        return TranslationConstants.sysAndDIA;
    }
  }

  String get message {
    switch (this) {
      case BloodPressureType.hypotension:
        return TranslationConstants.hypotensionMessage;
      case BloodPressureType.normal:
        return TranslationConstants.normalMessage;
      case BloodPressureType.elevated:
        return TranslationConstants.elevatedMessage;
      case BloodPressureType.hypertensionStage1:
        return TranslationConstants.hypertensionStage1Message;
      case BloodPressureType.hypertensionStage2:
        return TranslationConstants.hypertensionStage2Message;
      case BloodPressureType.hypertensionCrisis:
        return TranslationConstants.hypertensionCrisisMessage;
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
