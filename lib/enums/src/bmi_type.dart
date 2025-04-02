import 'package:flutter/material.dart';
import 'package:hunglydev_datn/core/constant/constant.dart';
import 'package:hunglydev_datn/core/constant/src/translaction.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

class BMITypeEnum {
  static BMIType getBMITypeByValue(int bmi) {
    if (bmi < 16.0) {
      return BMIType.verySeverelyUnderweight;
    } else if (bmi >= 16.0 && bmi <= 16.9) {
      return BMIType.severelyUnderweight;
    } else if (bmi >= 17.0 && bmi <= 18.4) {
      return BMIType.underweight;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return BMIType.normal;
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      return BMIType.overweight;
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      return BMIType.obeseClassI;
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      return BMIType.obeseClassII;
    } else {
      return BMIType.obeseClassIII;
    }
  }

  static BMIType getBMITypeById(int? id) {
    if (id == null) {
      return BMIType.normal;
    } else {
      return BMIType.values.firstWhere((element) => element.id == id, orElse: () => BMIType.normal);
    }
  }
}

enum BMIType {
  verySeverelyUnderweight,
  severelyUnderweight,
  underweight,
  normal,
  overweight,
  obeseClassI,
  obeseClassII,
  obeseClassIII,
}

extension BMITypeExtension on BMIType {
  String get message {
    switch (this) {
      case BMIType.verySeverelyUnderweight:
        return AppLocalization.current.bmiMessage;
      case BMIType.severelyUnderweight:
        return AppLocalization.current.bmiMessage;
      case BMIType.underweight:
        return AppLocalization.current.bmiMessage;
      case BMIType.normal:
        return AppLocalization.current.bmiMessage;
      case BMIType.overweight:
        return AppLocalization.current.bmiMessage;
      case BMIType.obeseClassI:
        return AppLocalization.current.bmiMessage;
      case BMIType.obeseClassII:
        return AppLocalization.current.bmiMessage;
      case BMIType.obeseClassIII:
        return AppLocalization.current.bmiMessage;
    }
  }

  String get bmiName {
    switch (this) {
      case BMIType.verySeverelyUnderweight:
        return AppLocalization.current.verySeverelyUnderweight;
      case BMIType.severelyUnderweight:
        return AppLocalization.current.severelyUnderweight;
      case BMIType.underweight:
        return AppLocalization.current.underweight;
      case BMIType.normal:
        return AppLocalization.current.normal;
      case BMIType.overweight:
        return AppLocalization.current.overweight;
      case BMIType.obeseClassI:
        return AppLocalization.current.obeseClassI;
      case BMIType.obeseClassII:
        return AppLocalization.current.obeseClassII;
      case BMIType.obeseClassIII:
        return AppLocalization.current.obeseClassIII;
    }
  }

  Color get color {
    switch (this) {
      case BMIType.verySeverelyUnderweight:
        return AppColor.violet;
      case BMIType.severelyUnderweight:
        return AppColor.deepViolet;
      case BMIType.underweight:
        return AppColor.primaryColor;
      case BMIType.normal:
        return AppColor.green;
      case BMIType.overweight:
        return AppColor.gold;
      case BMIType.obeseClassI:
        return AppColor.lightOrange;
      case BMIType.obeseClassII:
        return AppColor.orange;
      case BMIType.obeseClassIII:
        return AppColor.lightRed;
    }
  }

  int get id {
    switch (this) {
      case BMIType.verySeverelyUnderweight:
        return 0;
      case BMIType.severelyUnderweight:
        return 1;
      case BMIType.underweight:
        return 2;
      case BMIType.normal:
        return 3;
      case BMIType.overweight:
        return 4;
      case BMIType.obeseClassI:
        return 5;
      case BMIType.obeseClassII:
        return 6;
      case BMIType.obeseClassIII:
        return 7;
    }
  }
}
