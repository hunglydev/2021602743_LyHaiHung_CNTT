import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hunglydev_datn/core/constant/constant.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

log(String text) {
  if (kDebugMode) {
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach(
          (match) => debugPrint(
            match.group(0),
          ),
        );
  }
}

// String chooseContentByLanguage(String enContent, String viContent) {
//   if (Get.find<AppController>().currentLocale.toLanguageTag() == 'vi-VN' && viContent.isNotEmpty) return viContent;
//   return enContent.isNotEmpty ? enContent : viContent;
// }

String capitalizeOnlyFirstLater(String originalText) {
  if (originalText.trim().isEmpty) return "";
  return "${originalText[0].toUpperCase()}${originalText.substring(1)}";
}

// showToast(String text) {
//   Fluttertoast.showToast(
//     msg: text,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 3,
//     backgroundColor: AppColor.black.withOpacity(0.9),
//     textColor: AppColor.white,
//     fontSize: 18.0.sp,
//   );
// }

hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

Future<void> exportFile(List<dynamic> header, List<dynamic> content) async {
  String csvData = const ListToCsvConverter().convert(
    [
      header,
      ...content,
    ],
  );
  Directory? directoryTemp = await getTemporaryDirectory();
  String? path = '${directoryTemp.path}/${DateTime.now().millisecondsSinceEpoch}.csv';
  final bytes = utf8.encode(csvData);
  Uint8List bytes2 = Uint8List.fromList(bytes);
  await File(path).writeAsBytes(bytes2);
  Share.shareXFiles([XFile(path)]);
  await Future.delayed(const Duration(seconds: 1));
}

Future<dynamic> parseJsonFromAsset(String assetPath) async {
  debugPrint("Loading from $assetPath");
  final stringData = await rootBundle.loadString(assetPath);
  return jsonDecode(stringData);
}

bool isNullEmpty(Object? o) => o == null || "" == o || o == "null";

bool isNullEmptyOrFalse(Object? o) => o == null || false == o || "" == o;

bool isNullEmptyFalseOrZero(Object? o) => o == null || false == o || 0 == o || "" == o || "0" == o;

bool isNullEmptyList<T>(List<T>? t) => t == null || [] == t || t.isEmpty;

bool isNullEmptyMap<T>(Map<T, T>? t) => t == null || {} == t || t.isEmpty;

bool isNumeric(dynamic s) {
  String sConvert = s.toString();
  if (isNullEmpty(sConvert)) {
    return false;
  }
  return (double.tryParse(sConvert) != null || int.tryParse(sConvert) != null);
}

void finish(BuildContext context, [Object? result]) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context, result);
  }
}

TextStyle boldPrimaryTextStyle() => const TextStyle(
      color: AppColor.primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    );

TextStyle boldTextStyle({Color? color, double? fontSize}) => TextStyle(
      color: color ?? AppColor.textColor,
      fontWeight: FontWeight.w600,
      fontSize: fontSize ?? 16,
    );

TextStyle primaryTextStyle({double? fontSize}) => TextStyle(
      color: AppColor.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: fontSize ?? 14,
    );

TextStyle normalTextStyle({
  double? fontSize,
  Color? color,
}) =>
    TextStyle(
      color: color ?? AppColor.textColor,
      fontWeight: FontWeight.w500,
      fontSize: fontSize ?? 14,
    );

TextStyle subTextColor({Color? color, double? fontSize}) => TextStyle(
      color: color ?? AppColor.grayText,
      fontWeight: FontWeight.w400,
      fontSize: fontSize ?? 12,
    );
BoxDecoration commonDecoration() {
  return BoxDecoration(
    color: AppColor.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const [
      BoxShadow(
        color: Color(0x40000000),
        offset: Offset(0, 0),
        blurRadius: 10.0,
      ),
    ],
  );
}

bool isEmpty(dynamic val, {bool allowZero = false}) {
  if (val == null) {
    return true;
  } else {
    if (val is List) {
      if (val.isEmpty) return true;
      return false;
    } else if (val is String || val is int) {
      if (val.toString().isEmpty) return true;
      if (val.toString() == '0') {
        return !allowZero;
      }
      return false;
    }

    return true;
  }
}

String date(
  dynamic dateTime, {
  String? dateFormat,
  bool containTime = false,
  bool isShowTime = false,
  String? timeFormat,
}) {
  DateTime dt;
  if (isEmpty(dateTime)) {
    dt = DateTime.now();
  } else {
    if (dateTime is int) {
      dt = DateTime.fromMillisecondsSinceEpoch(dateTime * 1000);
    } else if (dateTime is String) {
      try {
        dt = DateTime.parse(dateTime);
      } catch (e) {
        return 'Invalid date string';
      }
    } else if (dateTime is DateTime) {
      dt = dateTime;
    } else {
      return 'Unsupported format';
    }
  }

  String result = DateFormat(dateFormat ?? 'dd/MM/yyyy').format(dt);

  // Format thêm giờ nếu isTime = true
  String time = DateFormat(timeFormat ?? 'HH:mm').format(dt);
  if (containTime) {
    result += ' $time';
  }
  if (isShowTime) {
    result = time;
  }

  return result;
}
