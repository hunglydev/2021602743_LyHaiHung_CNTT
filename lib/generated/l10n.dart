// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(
      _current != null,
      'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Thêm báo thức thành công`
  String get addAlarmSuccess {
    return Intl.message(
      'Thêm báo thức thành công',
      name: 'addAlarmSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message('Xác nhận', name: 'confirm', desc: '', args: []);
  }

  /// `Cân nặng`
  String get weight {
    return Intl.message('Cân nặng', name: 'weight', desc: '', args: []);
  }

  /// `Chiều cao`
  String get height {
    return Intl.message('Chiều cao', name: 'height', desc: '', args: []);
  }

  /// `Rất thiếu cân`
  String get verySeverelyUnderweight {
    return Intl.message(
      'Rất thiếu cân',
      name: 'verySeverelyUnderweight',
      desc: '',
      args: [],
    );
  }

  /// `Thiếu cân nghiêm trọng`
  String get severelyUnderweight {
    return Intl.message(
      'Thiếu cân nghiêm trọng',
      name: 'severelyUnderweight',
      desc: '',
      args: [],
    );
  }

  /// `Tháng`
  String get month {
    return Intl.message('Tháng', name: 'month', desc: '', args: []);
  }

  /// `Năm`
  String get year {
    return Intl.message('Năm', name: 'year', desc: '', args: []);
  }

  /// `Không có quảng cáo`
  String get noAds {
    return Intl.message(
      'Không có quảng cáo',
      name: 'noAds',
      desc: '',
      args: [],
    );
  }

  /// `Có quảng cáo`
  String get withAds {
    return Intl.message('Có quảng cáo', name: 'withAds', desc: '', args: []);
  }

  /// `Sản phẩm`
  String get product {
    return Intl.message('Sản phẩm', name: 'product', desc: '', args: []);
  }

  /// `Sản phẩm mới`
  String get newProduct {
    return Intl.message('Sản phẩm mới', name: 'newProduct', desc: '', args: []);
  }

  /// `Thông báo`
  String get notification {
    return Intl.message('Thông báo', name: 'notification', desc: '', args: []);
  }

  /// `Đang tải`
  String get loading {
    return Intl.message('Đang tải', name: 'loading', desc: '', args: []);
  }

  /// `Đếm bước chân`
  String get pedometer {
    return Intl.message('Đếm bước chân', name: 'pedometer', desc: '', args: []);
  }

  /// `Lỗi không xác định`
  String get unknownError {
    return Intl.message(
      'Lỗi không xác định',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Thông báo`
  String get notice {
    return Intl.message('Thông báo', name: 'notice', desc: '', args: []);
  }

  /// `Đóng`
  String get close {
    return Intl.message('Đóng', name: 'close', desc: '', args: []);
  }

  /// `Tiếp tục`
  String get continues {
    return Intl.message('Tiếp tục', name: 'continues', desc: '', args: []);
  }

  /// `Cài đặt`
  String get setting {
    return Intl.message('Cài đặt', name: 'setting', desc: '', args: []);
  }

  /// `Huỷ`
  String get cancel {
    return Intl.message('Huỷ', name: 'cancel', desc: '', args: []);
  }

  /// `Không có kết nối mạng`
  String get noNetTitle {
    return Intl.message(
      'Không có kết nối mạng',
      name: 'noNetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Không có kết nối mạng, vui lòng thử lại sau`
  String get noNetContent {
    return Intl.message(
      'Không có kết nối mạng, vui lòng thử lại sau',
      name: 'noNetContent',
      desc: '',
      args: [],
    );
  }

  /// `Thử lại`
  String get retry {
    return Intl.message('Thử lại', name: 'retry', desc: '', args: []);
  }

  /// `Cho phép`
  String get allow {
    return Intl.message('Cho phép', name: 'allow', desc: '', args: []);
  }

  /// `Loại bỏ quảng cáo`
  String get removeAds {
    return Intl.message(
      'Loại bỏ quảng cáo',
      name: 'removeAds',
      desc: '',
      args: [],
    );
  }

  /// `Quyền riêng tư`
  String get privacy {
    return Intl.message('Quyền riêng tư', name: 'privacy', desc: '', args: []);
  }

  /// `Điều khoản sử dụng`
  String get termOfCondition {
    return Intl.message(
      'Điều khoản sử dụng',
      name: 'termOfCondition',
      desc: '',
      args: [],
    );
  }

  /// `Liên hệ`
  String get contactUs {
    return Intl.message('Liên hệ', name: 'contactUs', desc: '', args: []);
  }

  /// `Chia sẻ`
  String get shareApp {
    return Intl.message('Chia sẻ', name: 'shareApp', desc: '', args: []);
  }

  /// `Ngôn ngữ`
  String get language {
    return Intl.message('Ngôn ngữ', name: 'language', desc: '', args: []);
  }

  /// `Chọn ngôn ngữ`
  String get chooseLanguage {
    return Intl.message(
      'Chọn ngôn ngữ',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Khôi phục`
  String get restore {
    return Intl.message('Khôi phục', name: 'restore', desc: '', args: []);
  }

  /// `Các ứng dụng khác`
  String get moreApp {
    return Intl.message(
      'Các ứng dụng khác',
      name: 'moreApp',
      desc: '',
      args: [],
    );
  }

  /// `Chức năng chưa sẵn sàng, vui lòng thử lại sau giây lát`
  String get errorLoadAds {
    return Intl.message(
      'Chức năng chưa sẵn sàng, vui lòng thử lại sau giây lát',
      name: 'errorLoadAds',
      desc: '',
      args: [],
    );
  }

  /// `Tải app để theo dõi nhiệt độ ngoài trời, độ ẩm, cập nhật tình hình thời tiết và chỉ số ô nhiễm không khí để bảo vệ bản thân và gia đình bạn`
  String get shareMessage {
    return Intl.message(
      'Tải app để theo dõi nhiệt độ ngoài trời, độ ẩm, cập nhật tình hình thời tiết và chỉ số ô nhiễm không khí để bảo vệ bản thân và gia đình bạn',
      name: 'shareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sức khỏe`
  String get bloodHealth {
    return Intl.message('Sức khỏe', name: 'bloodHealth', desc: '', args: []);
  }

  /// `Nhịp tim`
  String get heartRate {
    return Intl.message('Nhịp tim', name: 'heartRate', desc: '', args: []);
  }

  /// `Bạn có thể đo nhịp tim của mình bằng camera điện thoại`
  String get descriptionHeartRate {
    return Intl.message(
      'Bạn có thể đo nhịp tim của mình bằng camera điện thoại',
      name: 'descriptionHeartRate',
      desc: '',
      args: [],
    );
  }

  /// `Đo ngay`
  String get heartRateButton {
    return Intl.message('Đo ngay', name: 'heartRateButton', desc: '', args: []);
  }

  /// `Huyết áp`
  String get bloodPressure {
    return Intl.message('Huyết áp', name: 'bloodPressure', desc: '', args: []);
  }

  /// `Đường huyết`
  String get bloodSugar {
    return Intl.message('Đường huyết', name: 'bloodSugar', desc: '', args: []);
  }

  /// `Cân nặng & BMI`
  String get weightAndBMI {
    return Intl.message(
      'Cân nặng & BMI',
      name: 'weightAndBMI',
      desc: '',
      args: [],
    );
  }

  /// `Quét thực phẩm/thuốc`
  String get foodScanner {
    return Intl.message(
      'Quét thực phẩm/thuốc',
      name: 'foodScanner',
      desc: '',
      args: [],
    );
  }

  /// `Quét thực phẩm/thuốc`
  String get scanFood {
    return Intl.message(
      'Quét thực phẩm/thuốc',
      name: 'scanFood',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu quyền truy cập`
  String get requestPermission {
    return Intl.message(
      'Yêu cầu quyền truy cập',
      name: 'requestPermission',
      desc: '',
      args: [],
    );
  }

  /// `Trang chủ`
  String get home {
    return Intl.message('Trang chủ', name: 'home', desc: '', args: []);
  }

  /// `Chi tiết`
  String get insights {
    return Intl.message('Chi tiết', name: 'insights', desc: '', args: []);
  }

  /// `Đặt giờ`
  String get alarm {
    return Intl.message('Đặt giờ', name: 'alarm', desc: '', args: []);
  }

  /// `Xuất`
  String get export {
    return Intl.message('Xuất', name: 'export', desc: '', args: []);
  }

  /// `Trung bình`
  String get average {
    return Intl.message('Trung bình', name: 'average', desc: '', args: []);
  }

  /// `Nhỏ nhất`
  String get min {
    return Intl.message('Nhỏ nhất', name: 'min', desc: '', args: []);
  }

  /// `Lớn nhất`
  String get max {
    return Intl.message('Lớn nhất', name: 'max', desc: '', args: []);
  }

  /// `Đo Ngay`
  String get measureNow {
    return Intl.message('Đo Ngay', name: 'measureNow', desc: '', args: []);
  }

  /// `Đặt nhắc nhở`
  String get setAlarm {
    return Intl.message('Đặt nhắc nhở', name: 'setAlarm', desc: '', args: []);
  }

  /// `Thêm Dữ Liệu`
  String get addData {
    return Intl.message('Thêm Dữ Liệu', name: 'addData', desc: '', args: []);
  }

  /// `Dùng`
  String get stop {
    return Intl.message('Dùng', name: 'stop', desc: '', args: []);
  }

  /// `Thêm`
  String get add {
    return Intl.message('Thêm', name: 'add', desc: '', args: []);
  }

  /// `Đang đo`
  String get measuring {
    return Intl.message('Đang đo', name: 'measuring', desc: '', args: []);
  }

  /// `Đặt ngón tay của bạn trên máy ảnh`
  String get placeYourFinger {
    return Intl.message(
      'Đặt ngón tay của bạn trên máy ảnh',
      name: 'placeYourFinger',
      desc: '',
      args: [],
    );
  }

  /// `Đo ngay bây giờ hoặc thêm hồ sơ của bạn để xem số liệu thống kê`
  String get measureNowOrAdd {
    return Intl.message(
      'Đo ngay bây giờ hoặc thêm hồ sơ của bạn để xem số liệu thống kê',
      name: 'measureNowOrAdd',
      desc: '',
      args: [],
    );
  }

  /// `Đo`
  String get measure {
    return Intl.message('Đo', name: 'measure', desc: '', args: []);
  }

  /// `Đến premium`
  String get goPremium {
    return Intl.message('Đến premium', name: 'goPremium', desc: '', args: []);
  }

  /// `Đo ngay bằng cách xem quảng cáo`
  String get watchingAds {
    return Intl.message(
      'Đo ngay bằng cách xem quảng cáo',
      name: 'watchingAds',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng cho phép ứng dụng truy cập camera của thiết bị để đo nhịp tim`
  String get permissionCameraDenied01 {
    return Intl.message(
      'Vui lòng cho phép ứng dụng truy cập camera của thiết bị để đo nhịp tim',
      name: 'permissionCameraDenied01',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng vào phần cài đặt và cho phép ứng dụng truy cập camera của thiết bị để đo nhịp tim`
  String get permissionCameraSetting01 {
    return Intl.message(
      'Vui lòng vào phần cài đặt và cho phép ứng dụng truy cập camera của thiết bị để đo nhịp tim',
      name: 'permissionCameraSetting01',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng cho phép ứng dụng truy cập camera của thiết bị để tiến hành quét mã`
  String get permissionCameraDenied02 {
    return Intl.message(
      'Vui lòng cho phép ứng dụng truy cập camera của thiết bị để tiến hành quét mã',
      name: 'permissionCameraDenied02',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng vào phần cài đặt và cho phép ứng dụng truy cập camera của thiết bị để tiến hành quét mã`
  String get permissionCameraSetting02 {
    return Intl.message(
      'Vui lòng vào phần cài đặt và cho phép ứng dụng truy cập camera của thiết bị để tiến hành quét mã',
      name: 'permissionCameraSetting02',
      desc: '',
      args: [],
    );
  }

  /// `Nhịp tim nghỉ ngơi`
  String get restingHeartRate {
    return Intl.message(
      'Nhịp tim nghỉ ngơi',
      name: 'restingHeartRate',
      desc: '',
      args: [],
    );
  }

  /// `Chậm`
  String get slow {
    return Intl.message('Chậm', name: 'slow', desc: '', args: []);
  }

  /// `Bình thường`
  String get normal {
    return Intl.message('Bình thường', name: 'normal', desc: '', args: []);
  }

  /// `Nhanh`
  String get fast {
    return Intl.message('Nhanh', name: 'fast', desc: '', args: []);
  }

  /// `Tuổi`
  String get age {
    return Intl.message('Tuổi', name: 'age', desc: '', args: []);
  }

  /// `Chọn tuổi của bạn`
  String get choseYourAge {
    return Intl.message(
      'Chọn tuổi của bạn',
      name: 'choseYourAge',
      desc: '',
      args: [],
    );
  }

  /// `Chọn giới tính của bạn`
  String get choseYourGender {
    return Intl.message(
      'Chọn giới tính của bạn',
      name: 'choseYourGender',
      desc: '',
      args: [],
    );
  }

  /// `Lưu`
  String get save {
    return Intl.message('Lưu', name: 'save', desc: '', args: []);
  }

  /// `Chú ý! Nhịp tim của bạn quá thấp`
  String get rhSlowMessage {
    return Intl.message(
      'Chú ý! Nhịp tim của bạn quá thấp',
      name: 'rhSlowMessage',
      desc: '',
      args: [],
    );
  }

  /// `Tuyệt! Nhịp tim của bạn vẫn ở mức bình thường`
  String get rhNormalMessage {
    return Intl.message(
      'Tuyệt! Nhịp tim của bạn vẫn ở mức bình thường',
      name: 'rhNormalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Chú ý! Nhịp tim của bạn cao hơn bình thường`
  String get rhFastMessage {
    return Intl.message(
      'Chú ý! Nhịp tim của bạn cao hơn bình thường',
      name: 'rhFastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thêm dữ liệu thành công`
  String get addSuccess {
    return Intl.message(
      'Thêm dữ liệu thành công',
      name: 'addSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Thêm hẹn giờ thành công`
  String get addAlarmSuccessful {
    return Intl.message(
      'Thêm hẹn giờ thành công',
      name: 'addAlarmSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật hẹn giờ thành công`
  String get updateAlarmSuccess {
    return Intl.message(
      'Cập nhật hẹn giờ thành công',
      name: 'updateAlarmSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xoá hẹn giờ thành công`
  String get deleteAlarmSuccess {
    return Intl.message(
      'Xoá hẹn giờ thành công',
      name: 'deleteAlarmSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Không thể xoá hẹn giờ`
  String get deleteAlarmFailed {
    return Intl.message(
      'Không thể xoá hẹn giờ',
      name: 'deleteAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Không thể xoá hẹn giờ`
  String get updateAlarmFailed {
    return Intl.message(
      'Không thể xoá hẹn giờ',
      name: 'updateAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Không thể thêm hẹn giờ`
  String get addAlarmFailed {
    return Intl.message(
      'Không thể thêm hẹn giờ',
      name: 'addAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Có vẻ bạn chưa thêm hẹn giờ nào. Nhấn + để thêm`
  String get noAlarm {
    return Intl.message(
      'Có vẻ bạn chưa thêm hẹn giờ nào. Nhấn + để thêm',
      name: 'noAlarm',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng thử lại`
  String get pleaseTryAgain {
    return Intl.message(
      'Vui lòng thử lại',
      name: 'pleaseTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Ngày`
  String get date {
    return Intl.message('Ngày', name: 'date', desc: '', args: []);
  }

  /// `Giờ`
  String get time {
    return Intl.message('Giờ', name: 'time', desc: '', args: []);
  }

  /// `Giới tính`
  String get gender {
    return Intl.message('Giới tính', name: 'gender', desc: '', args: []);
  }

  /// `Xoá`
  String get delete {
    return Intl.message('Xoá', name: 'delete', desc: '', args: []);
  }

  /// `Xoá dữ liệu`
  String get deleteData {
    return Intl.message('Xoá dữ liệu', name: 'deleteData', desc: '', args: []);
  }

  /// `Bạn muốn xoá dữ liệu này?`
  String get deleteDataConfirm {
    return Intl.message(
      'Bạn muốn xoá dữ liệu này?',
      name: 'deleteDataConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh`
  String get en {
    return Intl.message('Tiếng Anh', name: 'en', desc: '', args: []);
  }

  /// `Tiếng Việt`
  String get vi {
    return Intl.message('Tiếng Việt', name: 'vi', desc: '', args: []);
  }

  /// `Thêm hồ sơ của bạn để xem số liệu thống kê`
  String get addYourRecordToSeeStatisitcs {
    return Intl.message(
      'Thêm hồ sơ của bạn để xem số liệu thống kê',
      name: 'addYourRecordToSeeStatisitcs',
      desc: '',
      args: [],
    );
  }

  /// `Tâm thu`
  String get systolic {
    return Intl.message('Tâm thu', name: 'systolic', desc: '', args: []);
  }

  /// `Tâm trương`
  String get diastolic {
    return Intl.message('Tâm trương', name: 'diastolic', desc: '', args: []);
  }

  /// `Huyết áp thấp`
  String get hypotension {
    return Intl.message(
      'Huyết áp thấp',
      name: 'hypotension',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp cao`
  String get elevated {
    return Intl.message('Huyết áp cao', name: 'elevated', desc: '', args: []);
  }

  /// `Tăng huyết áp giai đoạn 1`
  String get hypertensionStage1 {
    return Intl.message(
      'Tăng huyết áp giai đoạn 1',
      name: 'hypertensionStage1',
      desc: '',
      args: [],
    );
  }

  /// `Tăng huyết áp giai đoạn 2`
  String get hypertensionStage2 {
    return Intl.message(
      'Tăng huyết áp giai đoạn 2',
      name: 'hypertensionStage2',
      desc: '',
      args: [],
    );
  }

  /// `Khủng hoảng tăng huyết áp`
  String get hypertensionCrisis {
    return Intl.message(
      'Khủng hoảng tăng huyết áp',
      name: 'hypertensionCrisis',
      desc: '',
      args: [],
    );
  }

  /// `Tâm thu {sys} or Tâm trương {dia}`
  String systolicRangeOrDiastolicRange(Object sys, Object dia) {
    return Intl.message(
      'Tâm thu $sys or Tâm trương $dia',
      name: 'systolicRangeOrDiastolicRange',
      desc: '',
      args: [sys, dia],
    );
  }

  /// `Đồng ý`
  String get ok {
    return Intl.message('Đồng ý', name: 'ok', desc: '', args: []);
  }

  /// `Nhịp tim`
  String get pulse {
    return Intl.message('Nhịp tim', name: 'pulse', desc: '', args: []);
  }

  /// `Tâm thu {sys} và tâm trương {dia}`
  String sysAndDIA(Object sys, Object dia) {
    return Intl.message(
      'Tâm thu $sys và tâm trương $dia',
      name: 'sysAndDIA',
      desc: '',
      args: [sys, dia],
    );
  }

  /// `Ồ! huyết áp của bạn cao hơn bình thường. Nếu xảy ra 3 lần trở lên, bạn nên gặp bác sĩ để được hướng dẫn`
  String get hypertensionStage1Message {
    return Intl.message(
      'Ồ! huyết áp của bạn cao hơn bình thường. Nếu xảy ra 3 lần trở lên, bạn nên gặp bác sĩ để được hướng dẫn',
      name: 'hypertensionStage1Message',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp của bạn có vẻ hơi thấp. Vui lòng tìm kiếm sự giúp đỡ từ bác sĩ của bạn nếu nó vẫn ở mức thấp trong một thời gian dài`
  String get hypotensionMessage {
    return Intl.message(
      'Huyết áp của bạn có vẻ hơi thấp. Vui lòng tìm kiếm sự giúp đỡ từ bác sĩ của bạn nếu nó vẫn ở mức thấp trong một thời gian dài',
      name: 'hypotensionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Tuyệt quá! Huyết áp của bạn nằm trong phạm vi khỏe mạnh. Chỉ cần giữ nó!`
  String get normalMessage {
    return Intl.message(
      'Tuyệt quá! Huyết áp của bạn nằm trong phạm vi khỏe mạnh. Chỉ cần giữ nó!',
      name: 'normalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Hơi cao. Bạn nên theo dõi thường xuyên huyết áp của mình và cân nhắc thực hiện các thay đổi để cải thiện sức khỏe của mình`
  String get elevatedMessage {
    return Intl.message(
      'Hơi cao. Bạn nên theo dõi thường xuyên huyết áp của mình và cân nhắc thực hiện các thay đổi để cải thiện sức khỏe của mình',
      name: 'elevatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Chú ý! Nếu bạn có 3 kết quả trở lên trong phạm vi, cần có lời khuyên của bác sĩ và điều trị y tế ngay lập tức`
  String get hypertensionStage2Message {
    return Intl.message(
      'Chú ý! Nếu bạn có 3 kết quả trở lên trong phạm vi, cần có lời khuyên của bác sĩ và điều trị y tế ngay lập tức',
      name: 'hypertensionStage2Message',
      desc: '',
      args: [],
    );
  }

  /// `Chúng tôi lo lắng cho bạn, hãy gọi dịch vụ cấp cứu ngay lập tức`
  String get hypertensionCrisisMessage {
    return Intl.message(
      'Chúng tôi lo lắng cho bạn, hãy gọi dịch vụ cấp cứu ngay lập tức',
      name: 'hypertensionCrisisMessage',
      desc: '',
      args: [],
    );
  }

  /// `Chỉnh sửa`
  String get edit {
    return Intl.message('Chỉnh sửa', name: 'edit', desc: '', args: []);
  }

  /// `cho`
  String get forSomething {
    return Intl.message('cho', name: 'forSomething', desc: '', args: []);
  }

  /// `Loại`
  String get type {
    return Intl.message('Loại', name: 'type', desc: '', args: []);
  }

  /// `KHông có thông tin`
  String get noInformation {
    return Intl.message(
      'KHông có thông tin',
      name: 'noInformation',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả quét`
  String get scanResult {
    return Intl.message('Kết quả quét', name: 'scanResult', desc: '', args: []);
  }

  /// `Mã QR`
  String get qrCode {
    return Intl.message('Mã QR', name: 'qrCode', desc: '', args: []);
  }

  /// `Mã vạch`
  String get barcode {
    return Intl.message('Mã vạch', name: 'barcode', desc: '', args: []);
  }

  /// `Thêm dữ liệu thành công`
  String get addDataSuccess {
    return Intl.message(
      'Thêm dữ liệu thành công',
      name: 'addDataSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Thêm dữ liệu thất bại`
  String get addDataFailed {
    return Intl.message(
      'Thêm dữ liệu thất bại',
      name: 'addDataFailed',
      desc: '',
      args: [],
    );
  }

  /// `Sửa dữ liệu thành công`
  String get editDataSuccess {
    return Intl.message(
      'Sửa dữ liệu thành công',
      name: 'editDataSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Sửa dữ liệu thất bại`
  String get editDataFailed {
    return Intl.message(
      'Sửa dữ liệu thất bại',
      name: 'editDataFailed',
      desc: '',
      args: [],
    );
  }

  /// `Xóa dữ liệu thành công`
  String get deleteDataSuccess {
    return Intl.message(
      'Xóa dữ liệu thành công',
      name: 'deleteDataSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xóa dữ liệu thất bại`
  String get deleteDataFailed {
    return Intl.message(
      'Xóa dữ liệu thất bại',
      name: 'deleteDataFailed',
      desc: '',
      args: [],
    );
  }

  /// `Bạn có chắc muốn xoá hẹn giờ này?`
  String get deleteAlarmConfirmMsg {
    return Intl.message(
      'Bạn có chắc muốn xoá hẹn giờ này?',
      name: 'deleteAlarmConfirmMsg',
      desc: '',
      args: [],
    );
  }

  /// `Nhắc nhở theo dõi`
  String get remindToRecord {
    return Intl.message(
      'Nhắc nhở theo dõi',
      name: 'remindToRecord',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả`
  String get bloodSugarAllState {
    return Intl.message(
      'Tất cả',
      name: 'bloodSugarAllState',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái`
  String get bloodSugarState {
    return Intl.message(
      'Trạng thái',
      name: 'bloodSugarState',
      desc: '',
      args: [],
    );
  }

  /// `Mặc định`
  String get bloodSugarDefaultState {
    return Intl.message(
      'Mặc định',
      name: 'bloodSugarDefaultState',
      desc: '',
      args: [],
    );
  }

  /// `Trong khi ăn`
  String get duringFastingCode {
    return Intl.message(
      'Trong khi ăn',
      name: 'duringFastingCode',
      desc: '',
      args: [],
    );
  }

  /// `Trước khi ăn`
  String get beforeEatingCode {
    return Intl.message(
      'Trước khi ăn',
      name: 'beforeEatingCode',
      desc: '',
      args: [],
    );
  }

  /// `Sau khi ăn (1h)`
  String get afterEating1hCode {
    return Intl.message(
      'Sau khi ăn (1h)',
      name: 'afterEating1hCode',
      desc: '',
      args: [],
    );
  }

  /// `Sau khi ăn (2h)`
  String get afterEating2hCode {
    return Intl.message(
      'Sau khi ăn (2h)',
      name: 'afterEating2hCode',
      desc: '',
      args: [],
    );
  }

  /// `Trước khi ngủ`
  String get beforeBedtimeCode {
    return Intl.message(
      'Trước khi ngủ',
      name: 'beforeBedtimeCode',
      desc: '',
      args: [],
    );
  }

  /// `Trước giờ luyện tập`
  String get beforeWorkoutCode {
    return Intl.message(
      'Trước giờ luyện tập',
      name: 'beforeWorkoutCode',
      desc: '',
      args: [],
    );
  }

  /// `Sau giờ luyện tập`
  String get afterWorkoutCode {
    return Intl.message(
      'Sau giờ luyện tập',
      name: 'afterWorkoutCode',
      desc: '',
      args: [],
    );
  }

  /// `Thấp`
  String get bloodSugarInforLow {
    return Intl.message('Thấp', name: 'bloodSugarInforLow', desc: '', args: []);
  }

  /// `Bình thường`
  String get bloodSugarInforNormal {
    return Intl.message(
      'Bình thường',
      name: 'bloodSugarInforNormal',
      desc: '',
      args: [],
    );
  }

  /// `Tiền tiểu đường`
  String get bloodSugarInforPreDiabetes {
    return Intl.message(
      'Tiền tiểu đường',
      name: 'bloodSugarInforPreDiabetes',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh tiểu đường`
  String get bloodSugarInforDiabetes {
    return Intl.message(
      'Bệnh tiểu đường',
      name: 'bloodSugarInforDiabetes',
      desc: '',
      args: [],
    );
  }

  /// `Theo dõi sức khoẻ của bạn`
  String get trackYourHealth {
    return Intl.message(
      'Theo dõi sức khoẻ của bạn',
      name: 'trackYourHealth',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra nhịp tim của bạn để theo dõi sức khoẻ tim mạch`
  String get checkYourHeartRate {
    return Intl.message(
      'Kiểm tra nhịp tim của bạn để theo dõi sức khoẻ tim mạch',
      name: 'checkYourHeartRate',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra huyết áp của bạn để theo dõi sức khoẻ tim mạch`
  String get checkYourBloodPressure {
    return Intl.message(
      'Kiểm tra huyết áp của bạn để theo dõi sức khoẻ tim mạch',
      name: 'checkYourBloodPressure',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra cân nặng và BMI của bạn để theo dõi sức khoẻ tim mạch`
  String get checkYourWeightAndBMI {
    return Intl.message(
      'Kiểm tra cân nặng và BMI của bạn để theo dõi sức khoẻ tim mạch',
      name: 'checkYourWeightAndBMI',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra lượng đường trong máu của bạn để theo dõi sức khoẻ tim mạch`
  String get checkYourBloodSugar {
    return Intl.message(
      'Kiểm tra lượng đường trong máu của bạn để theo dõi sức khoẻ tim mạch',
      name: 'checkYourBloodSugar',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin`
  String get bloodSugarInfo {
    return Intl.message(
      'Thông tin',
      name: 'bloodSugarInfo',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ đo huyết áp!`
  String get bloodPressureNoti0 {
    return Intl.message(
      'Đã tới giờ đo huyết áp!',
      name: 'bloodPressureNoti0',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra huyết áp và theo dõi sự khác biệt trong biểu đồ!`
  String get bloodPressureNoti1 {
    return Intl.message(
      'Kiểm tra huyết áp và theo dõi sự khác biệt trong biểu đồ!',
      name: 'bloodPressureNoti1',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã kiểm tra huyết áp ngày hôm nay chưa? Chạm để đo ngay!`
  String get bloodPressureNoti2 {
    return Intl.message(
      'Bạn đã kiểm tra huyết áp ngày hôm nay chưa? Chạm để đo ngay!',
      name: 'bloodPressureNoti2',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp cao có thể gây ra đột quỵ. Hãy kiểm tra huyết áp ngay!`
  String get bloodPressureNoti3 {
    return Intl.message(
      'Huyết áp cao có thể gây ra đột quỵ. Hãy kiểm tra huyết áp ngay!',
      name: 'bloodPressureNoti3',
      desc: '',
      args: [],
    );
  }

  /// `Sống khoẻ bằng việc đo huyết áp hàng ngày!`
  String get bloodPressureNoti4 {
    return Intl.message(
      'Sống khoẻ bằng việc đo huyết áp hàng ngày!',
      name: 'bloodPressureNoti4',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã đo huyết áp hôm nay chưa? Hãy tiếp tục đo huyết áp để theo dõi sức khoẻ`
  String get bloodPressureNoti5 {
    return Intl.message(
      'Bạn đã đo huyết áp hôm nay chưa? Hãy tiếp tục đo huyết áp để theo dõi sức khoẻ',
      name: 'bloodPressureNoti5',
      desc: '',
      args: [],
    );
  }

  /// `Phát hiện huyết áp cao với ứng dụng của chúng tôi. Chạm để sử dụng`
  String get bloodPressureNoti6 {
    return Intl.message(
      'Phát hiện huyết áp cao với ứng dụng của chúng tôi. Chạm để sử dụng',
      name: 'bloodPressureNoti6',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra huyết áp và chạm vào đây để theo dõi chúng`
  String get bloodPressureNoti7 {
    return Intl.message(
      'Kiểm tra huyết áp và chạm vào đây để theo dõi chúng',
      name: 'bloodPressureNoti7',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ đo huyết áp và ghi lại!`
  String get bloodPressureNoti8 {
    return Intl.message(
      'Đã tới giờ đo huyết áp và ghi lại!',
      name: 'bloodPressureNoti8',
      desc: '',
      args: [],
    );
  }

  /// `Sống khoẻ bằng cách đo huyết áp để phát hiện các triệu chứng huyết áp cao, huyết áp thấp với công cụ của chúng tôi`
  String get bloodPressureNoti9 {
    return Intl.message(
      'Sống khoẻ bằng cách đo huyết áp để phát hiện các triệu chứng huyết áp cao, huyết áp thấp với công cụ của chúng tôi',
      name: 'bloodPressureNoti9',
      desc: '',
      args: [],
    );
  }

  /// `Hãy theo dõi sức khoẻ bằng cách kiểm tra nhịp tim`
  String get heartRateNoti0 {
    return Intl.message(
      'Hãy theo dõi sức khoẻ bằng cách kiểm tra nhịp tim',
      name: 'heartRateNoti0',
      desc: '',
      args: [],
    );
  }

  /// `Đo vào theo dõi nhịp tim ngay bây giờ`
  String get heartRateNoti1 {
    return Intl.message(
      'Đo vào theo dõi nhịp tim ngay bây giờ',
      name: 'heartRateNoti1',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ đo nhịp tim rồi!`
  String get heartRateNoti2 {
    return Intl.message(
      'Đã tới giờ đo nhịp tim rồi!',
      name: 'heartRateNoti2',
      desc: '',
      args: [],
    );
  }

  /// `BPM có thể cho thấy tình trạng sức khoẻ của bạn`
  String get heartRateNoti3 {
    return Intl.message(
      'BPM có thể cho thấy tình trạng sức khoẻ của bạn',
      name: 'heartRateNoti3',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ đo nhịp tim, chạm vào đây để tiến hành đo và theo dõi`
  String get heartRateNoti4 {
    return Intl.message(
      'Đã tới giờ đo nhịp tim, chạm vào đây để tiến hành đo và theo dõi',
      name: 'heartRateNoti4',
      desc: '',
      args: [],
    );
  }

  /// `Đo nhịp tim của bạn để kiểm tra sức khoẻ`
  String get heartRateNoti5 {
    return Intl.message(
      'Đo nhịp tim của bạn để kiểm tra sức khoẻ',
      name: 'heartRateNoti5',
      desc: '',
      args: [],
    );
  }

  /// `Các hoạt động thể chất và trạng thái tinh thần có thể ảnh hưởng tới nhịp tim của bạn. Chạm để kiểm tra và ghi lại`
  String get heartRateNoti6 {
    return Intl.message(
      'Các hoạt động thể chất và trạng thái tinh thần có thể ảnh hưởng tới nhịp tim của bạn. Chạm để kiểm tra và ghi lại',
      name: 'heartRateNoti6',
      desc: '',
      args: [],
    );
  }

  /// `Bạn rảnh chứ? Hãy đo và theo dõi nhịp tim của mình`
  String get heartRateNoti7 {
    return Intl.message(
      'Bạn rảnh chứ? Hãy đo và theo dõi nhịp tim của mình',
      name: 'heartRateNoti7',
      desc: '',
      args: [],
    );
  }

  /// `Này! Đã tới giờ đo và theo dõi nhịp tim bằng công cụ của chúng tôi!`
  String get heartRateNoti8 {
    return Intl.message(
      'Này! Đã tới giờ đo và theo dõi nhịp tim bằng công cụ của chúng tôi!',
      name: 'heartRateNoti8',
      desc: '',
      args: [],
    );
  }

  /// `Sống khoẻ bằng cách cùng chúng tôi theo dõi nhịp tim hàng ngày`
  String get heartRateNoti9 {
    return Intl.message(
      'Sống khoẻ bằng cách cùng chúng tôi theo dõi nhịp tim hàng ngày',
      name: 'heartRateNoti9',
      desc: '',
      args: [],
    );
  }

  /// `Ghi lại lượng đường trong máu để sống khoẻ hơn!`
  String get bloodSugarNoti0 {
    return Intl.message(
      'Ghi lại lượng đường trong máu để sống khoẻ hơn!',
      name: 'bloodSugarNoti0',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ ghi lại lượng đường trong máu!`
  String get bloodSugarNoti1 {
    return Intl.message(
      'Đã tới giờ ghi lại lượng đường trong máu!',
      name: 'bloodSugarNoti1',
      desc: '',
      args: [],
    );
  }

  /// `Lượng đường trong máu có thể phản ánh tình trạng sức khoẻ của bạn. Hãy kiểm tra ngay!`
  String get bloodSugarNoti2 {
    return Intl.message(
      'Lượng đường trong máu có thể phản ánh tình trạng sức khoẻ của bạn. Hãy kiểm tra ngay!',
      name: 'bloodSugarNoti2',
      desc: '',
      args: [],
    );
  }

  /// `Lượng đường trong máu có thể dùng để kiểm tra bệnh tiểu đường. Hãy kiểm tra ngay!`
  String get bloodSugarNoti3 {
    return Intl.message(
      'Lượng đường trong máu có thể dùng để kiểm tra bệnh tiểu đường. Hãy kiểm tra ngay!',
      name: 'bloodSugarNoti3',
      desc: '',
      args: [],
    );
  }

  /// `Bệnh tiểu đường và các bệnh lí khác có thể được phát hiện thông qua lượng đường trong máu. Chạm để kiểm tra`
  String get bloodSugarNoti4 {
    return Intl.message(
      'Bệnh tiểu đường và các bệnh lí khác có thể được phát hiện thông qua lượng đường trong máu. Chạm để kiểm tra',
      name: 'bloodSugarNoti4',
      desc: '',
      args: [],
    );
  }

  /// `Nắm được lượng đường trong máu và theo dõi hàng ngày`
  String get bloodSugarNoti5 {
    return Intl.message(
      'Nắm được lượng đường trong máu và theo dõi hàng ngày',
      name: 'bloodSugarNoti5',
      desc: '',
      args: [],
    );
  }

  /// `Lượng đường trong máu cao có thể gây nguy hiểm. Chạm để kiểm tra ngay`
  String get bloodSugarNoti6 {
    return Intl.message(
      'Lượng đường trong máu cao có thể gây nguy hiểm. Chạm để kiểm tra ngay',
      name: 'bloodSugarNoti6',
      desc: '',
      args: [],
    );
  }

  /// `Bảo vệ bản thân bằng cách đo lượng đường trong máu hàng ngày`
  String get bloodSugarNoti7 {
    return Intl.message(
      'Bảo vệ bản thân bằng cách đo lượng đường trong máu hàng ngày',
      name: 'bloodSugarNoti7',
      desc: '',
      args: [],
    );
  }

  /// `Lượng đường trong máu thấp có thể gây nguy hiểm. Chạm để kiểm tra ngay`
  String get bloodSugarNoti8 {
    return Intl.message(
      'Lượng đường trong máu thấp có thể gây nguy hiểm. Chạm để kiểm tra ngay',
      name: 'bloodSugarNoti8',
      desc: '',
      args: [],
    );
  }

  /// `Xem biểu đồ theo dõi lượng đường trong máu và tiến hành đo.`
  String get bloodSugarNoti9 {
    return Intl.message(
      'Xem biểu đồ theo dõi lượng đường trong máu và tiến hành đo.',
      name: 'bloodSugarNoti9',
      desc: '',
      args: [],
    );
  }

  /// `Ghi lại cân nặng và theo dõi BMI`
  String get weightAndBMINoti0 {
    return Intl.message(
      'Ghi lại cân nặng và theo dõi BMI',
      name: 'weightAndBMINoti0',
      desc: '',
      args: [],
    );
  }

  /// `Theo dõi chế độ ăn uống và kiểm tra BMI`
  String get weightAndBMINoti1 {
    return Intl.message(
      'Theo dõi chế độ ăn uống và kiểm tra BMI',
      name: 'weightAndBMINoti1',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ đo cân nặng và kiểm tra BMI`
  String get weightAndBMINoti2 {
    return Intl.message(
      'Đã tới giờ đo cân nặng và kiểm tra BMI',
      name: 'weightAndBMINoti2',
      desc: '',
      args: [],
    );
  }

  /// `Xem lại thành quả tập luyện của mình với chứng năng BMI`
  String get weightAndBMINoti3 {
    return Intl.message(
      'Xem lại thành quả tập luyện của mình với chứng năng BMI',
      name: 'weightAndBMINoti3',
      desc: '',
      args: [],
    );
  }

  /// `Tính BMI tự động bằng cách ghi lại cân nặng của mình`
  String get weightAndBMINoti4 {
    return Intl.message(
      'Tính BMI tự động bằng cách ghi lại cân nặng của mình',
      name: 'weightAndBMINoti4',
      desc: '',
      args: [],
    );
  }

  /// `Xem chỉ cố cân nặng cơ thể với ứng dụng của chúng tôi`
  String get weightAndBMINoti5 {
    return Intl.message(
      'Xem chỉ cố cân nặng cơ thể với ứng dụng của chúng tôi',
      name: 'weightAndBMINoti5',
      desc: '',
      args: [],
    );
  }

  /// `Sống khoẻ bằng cách theo dõi chỉ số cân nặng của mình!`
  String get weightAndBMINoti6 {
    return Intl.message(
      'Sống khoẻ bằng cách theo dõi chỉ số cân nặng của mình!',
      name: 'weightAndBMINoti6',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra chỉ số cân nặng cơ thể để thay đổi chế độ ăn uống và cân nặng!`
  String get weightAndBMINoti7 {
    return Intl.message(
      'Kiểm tra chỉ số cân nặng cơ thể để thay đổi chế độ ăn uống và cân nặng!',
      name: 'weightAndBMINoti7',
      desc: '',
      args: [],
    );
  }

  /// `Xem thông số BMI ngay!`
  String get weightAndBMINoti8 {
    return Intl.message(
      'Xem thông số BMI ngay!',
      name: 'weightAndBMINoti8',
      desc: '',
      args: [],
    );
  }

  /// `Đã tới giờ kiểm tra thành quả tập luyện bằng việc đo BMI`
  String get weightAndBMINoti9 {
    return Intl.message(
      'Đã tới giờ kiểm tra thành quả tập luyện bằng việc đo BMI',
      name: 'weightAndBMINoti9',
      desc: '',
      args: [],
    );
  }

  /// `Thiếu cân`
  String get underweight {
    return Intl.message('Thiếu cân', name: 'underweight', desc: '', args: []);
  }

  /// `Thừa cân`
  String get overweight {
    return Intl.message('Thừa cân', name: 'overweight', desc: '', args: []);
  }

  /// `Béo phì loại I`
  String get obeseClassI {
    return Intl.message(
      'Béo phì loại I',
      name: 'obeseClassI',
      desc: '',
      args: [],
    );
  }

  /// `Béo phì loại II`
  String get obeseClassII {
    return Intl.message(
      'Béo phì loại II',
      name: 'obeseClassII',
      desc: '',
      args: [],
    );
  }

  /// `Béo phì loại III`
  String get obeseClassIII {
    return Intl.message(
      'Béo phì loại III',
      name: 'obeseClassIII',
      desc: '',
      args: [],
    );
  }

  /// `BMI {value}`
  String bmiMessage(Object value) {
    return Intl.message(
      'BMI $value',
      name: 'bmiMessage',
      desc: '',
      args: [value],
    );
  }

  /// `BMI`
  String get bmi {
    return Intl.message('BMI', name: 'bmi', desc: '', args: []);
  }

  /// `Gói ghi chú sức khỏe premium`
  String get subscribeTitle {
    return Intl.message(
      'Gói ghi chú sức khỏe premium',
      name: 'subscribeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký này tự động gia hạn sau thời gian dùng thử 3 ngày cho {priceOfWeek}/{week}, {priceOfMonth}/{month} và {priceOfYear}/{year}, bạn có thể hủy đăng ký bất cứ lúc nào. Thanh toán sẽ được tính vào tài khoản Google Play của bạn khi xác nhận mua hàng. Đăng ký tự động gia hạn trừ khi nó bị hủy ít nhất 24 giờ trước khi kết thúc giai đoạn hiện tại. Bạn có thể quản lý và hủy đăng ký của mình bằng cách truy cập cài đặt tài khoản của bạn trên GooglePlay sau khi mua. Mọi phần hoặc khoảng thời gian chưa sử dụng của giai đoạn dùng thử miễn phí sẽ bị hủy bỏ, ngay sau khi bạn mua đăng ký.`
  String descriptionSub(
    Object priceOfWeek,
    Object week,
    Object priceOfMonth,
    Object month,
    Object priceOfYear,
    Object year,
  ) {
    return Intl.message(
      'Đăng ký này tự động gia hạn sau thời gian dùng thử 3 ngày cho $priceOfWeek/$week, $priceOfMonth/$month và $priceOfYear/$year, bạn có thể hủy đăng ký bất cứ lúc nào. Thanh toán sẽ được tính vào tài khoản Google Play của bạn khi xác nhận mua hàng. Đăng ký tự động gia hạn trừ khi nó bị hủy ít nhất 24 giờ trước khi kết thúc giai đoạn hiện tại. Bạn có thể quản lý và hủy đăng ký của mình bằng cách truy cập cài đặt tài khoản của bạn trên GooglePlay sau khi mua. Mọi phần hoặc khoảng thời gian chưa sử dụng của giai đoạn dùng thử miễn phí sẽ bị hủy bỏ, ngay sau khi bạn mua đăng ký.',
      name: 'descriptionSub',
      desc: '',
      args: [priceOfWeek, week, priceOfMonth, month, priceOfYear, year],
    );
  }

  /// `Đăng ký này tự động gia hạn sau thời gian dùng thử 3 ngày cho {priceOfFullPack}, bạn có thể hủy đăng ký bất cứ lúc nào. Thanh toán sẽ được tính vào tài khoản Google Play của bạn khi xác nhận mua hàng. Đăng ký tự động gia hạn trừ khi nó bị hủy ít nhất 24 giờ trước khi kết thúc giai đoạn hiện tại. Bạn có thể quản lý và hủy đăng ký của mình bằng cách truy cập cài đặt tài khoản của bạn trên GooglePlay sau khi mua. Mọi phần hoặc khoảng thời gian chưa sử dụng của giai đoạn dùng thử miễn phí sẽ bị hủy bỏ, ngay sau khi bạn mua đăng ký.`
  String descriptionSub1(Object priceOfFullPack) {
    return Intl.message(
      'Đăng ký này tự động gia hạn sau thời gian dùng thử 3 ngày cho $priceOfFullPack, bạn có thể hủy đăng ký bất cứ lúc nào. Thanh toán sẽ được tính vào tài khoản Google Play của bạn khi xác nhận mua hàng. Đăng ký tự động gia hạn trừ khi nó bị hủy ít nhất 24 giờ trước khi kết thúc giai đoạn hiện tại. Bạn có thể quản lý và hủy đăng ký của mình bằng cách truy cập cài đặt tài khoản của bạn trên GooglePlay sau khi mua. Mọi phần hoặc khoảng thời gian chưa sử dụng của giai đoạn dùng thử miễn phí sẽ bị hủy bỏ, ngay sau khi bạn mua đăng ký.',
      name: 'descriptionSub1',
      desc: '',
      args: [priceOfFullPack],
    );
  }

  /// `Start your 3 Days Free trial`
  String get subscribeContentIos1 {
    return Intl.message(
      'Start your 3 Days Free trial',
      name: 'subscribeContentIos1',
      desc: '',
      args: [],
    );
  }

  /// `Bắt đầu 3 ngày dùng thử miễn phí của bạn`
  String get subscribeContentIos2 {
    return Intl.message(
      'Bắt đầu 3 ngày dùng thử miễn phí của bạn',
      name: 'subscribeContentIos2',
      desc: '',
      args: [],
    );
  }

  /// `Truy cập Tạp chí đường huyết; Theo dõi cân nặng & BMI và hơn thế nữa,...`
  String get subscribeContentIos3 {
    return Intl.message(
      'Truy cập Tạp chí đường huyết; Theo dõi cân nặng & BMI và hơn thế nữa,...',
      name: 'subscribeContentIos3',
      desc: '',
      args: [],
    );
  }

  /// `Xuất dữ liệu sức khỏe của bạn bất cứ lúc nào`
  String get subscribeContentIos4 {
    return Intl.message(
      'Xuất dữ liệu sức khỏe của bạn bất cứ lúc nào',
      name: 'subscribeContentIos4',
      desc: '',
      args: [],
    );
  }

  /// `Đặt báo thức để đo các dấu hiệu quan trọng của bạn`
  String get subscribeContentIos5 {
    return Intl.message(
      'Đặt báo thức để đo các dấu hiệu quan trọng của bạn',
      name: 'subscribeContentIos5',
      desc: '',
      args: [],
    );
  }

  /// `Loại bỏ các quảng cáo`
  String get subscribeContentIos6 {
    return Intl.message(
      'Loại bỏ các quảng cáo',
      name: 'subscribeContentIos6',
      desc: '',
      args: [],
    );
  }

  /// `Bắt đầu 3 ngày dùng thử miễn phí của bạn`
  String get subscribeContentAndroid1 {
    return Intl.message(
      'Bắt đầu 3 ngày dùng thử miễn phí của bạn',
      name: 'subscribeContentAndroid1',
      desc: '',
      args: [],
    );
  }

  /// `Không giới hạn số lần đo`
  String get subscribeContentAndroid2 {
    return Intl.message(
      'Không giới hạn số lần đo',
      name: 'subscribeContentAndroid2',
      desc: '',
      args: [],
    );
  }

  /// `Xuất dữ liệu sức khỏe của bạn bất cứ lúc nào`
  String get subscribeContentAndroid3 {
    return Intl.message(
      'Xuất dữ liệu sức khỏe của bạn bất cứ lúc nào',
      name: 'subscribeContentAndroid3',
      desc: '',
      args: [],
    );
  }

  /// `Đo liên tục`
  String get subscribeContentAndroid4 {
    return Intl.message(
      'Đo liên tục',
      name: 'subscribeContentAndroid4',
      desc: '',
      args: [],
    );
  }

  /// `Loại bỏ các quảng cáo`
  String get subscribeContentAndroid5 {
    return Intl.message(
      'Loại bỏ các quảng cáo',
      name: 'subscribeContentAndroid5',
      desc: '',
      args: [],
    );
  }

  /// `Đo nhịp tim và theo dõi dữ liệu sức khỏe của bạn`
  String get subscribeContentAndroid6 {
    return Intl.message(
      'Đo nhịp tim và theo dõi dữ liệu sức khỏe của bạn',
      name: 'subscribeContentAndroid6',
      desc: '',
      args: [],
    );
  }

  /// `Quyền riêng tư`
  String get privacyPolicy {
    return Intl.message(
      'Quyền riêng tư',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Điều khoản sử dụng`
  String get termService {
    return Intl.message(
      'Điều khoản sử dụng',
      name: 'termService',
      desc: '',
      args: [],
    );
  }

  /// `Tự động gia hạn. Hủy bỏ bất cứ lúc nào`
  String get subscribeAutoRenewable {
    return Intl.message(
      'Tự động gia hạn. Hủy bỏ bất cứ lúc nào',
      name: 'subscribeAutoRenewable',
      desc: '',
      args: [],
    );
  }

  /// `mỗi năm`
  String get perYear {
    return Intl.message('mỗi năm', name: 'perYear', desc: '', args: []);
  }

  /// `mỗi tuần`
  String get perWeek {
    return Intl.message('mỗi tuần', name: 'perWeek', desc: '', args: []);
  }

  /// `mỗi tháng`
  String get perMonth {
    return Intl.message('mỗi tháng', name: 'perMonth', desc: '', args: []);
  }

  /// `Chỉ`
  String get only {
    return Intl.message('Chỉ', name: 'only', desc: '', args: []);
  }

  /// `Dùng thử miễn phí 3 ngày`
  String get threeFreeTrial {
    return Intl.message(
      'Dùng thử miễn phí 3 ngày',
      name: 'threeFreeTrial',
      desc: '',
      args: [],
    );
  }

  /// `Lựa chọn tốt nhất`
  String get bestOffer {
    return Intl.message(
      'Lựa chọn tốt nhất',
      name: 'bestOffer',
      desc: '',
      args: [],
    );
  }

  /// `Những thông tin dưới đây sẽ giúp ích cho bạn trong quá trình theo dõi sức khỏe của mình`
  String get selectLocation {
    return Intl.message(
      'Những thông tin dưới đây sẽ giúp ích cho bạn trong quá trình theo dõi sức khỏe của mình',
      name: 'selectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Bạn bao nhiêu tuổi?`
  String get howOldAreYou {
    return Intl.message(
      'Bạn bao nhiêu tuổi?',
      name: 'howOldAreYou',
      desc: '',
      args: [],
    );
  }

  /// `Giới tính của bạn?`
  String get whatGender {
    return Intl.message(
      'Giới tính của bạn?',
      name: 'whatGender',
      desc: '',
      args: [],
    );
  }

  /// `Nam`
  String get male {
    return Intl.message('Nam', name: 'male', desc: '', args: []);
  }

  /// `Nữ`
  String get female {
    return Intl.message('Nữ', name: 'female', desc: '', args: []);
  }

  /// `Bạn đến từ đâu?`
  String get questionWhere {
    return Intl.message(
      'Bạn đến từ đâu?',
      name: 'questionWhere',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp theo`
  String get next {
    return Intl.message('Tiếp theo', name: 'next', desc: '', args: []);
  }

  /// `Tài khoản`
  String get account {
    return Intl.message('Tài khoản', name: 'account', desc: '', args: []);
  }

  /// `Họ và tên`
  String get fullName {
    return Intl.message('Họ và tên', name: 'fullName', desc: '', args: []);
  }

  /// `Ngày sinh`
  String get birthDay {
    return Intl.message('Ngày sinh', name: 'birthDay', desc: '', args: []);
  }

  /// `Điều khoản và dịch vụ`
  String get termAndService {
    return Intl.message(
      'Điều khoản và dịch vụ',
      name: 'termAndService',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh`
  String get english {
    return Intl.message('Tiếng Anh', name: 'english', desc: '', args: []);
  }

  /// `Tiếng Việt`
  String get vietnamese {
    return Intl.message('Tiếng Việt', name: 'vietnamese', desc: '', args: []);
  }

  /// `Phiên bản`
  String get version {
    return Intl.message('Phiên bản', name: 'version', desc: '', args: []);
  }

  /// `Liên hệ với chúng tôi`
  String get contactWithUs {
    return Intl.message(
      'Liên hệ với chúng tôi',
      name: 'contactWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Có lỗi xảy ra, vui lòng thử lại sau`
  String get someThingWentWrong {
    return Intl.message(
      'Có lỗi xảy ra, vui lòng thử lại sau',
      name: 'someThingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Thành công`
  String get success {
    return Intl.message('Thành công', name: 'success', desc: '', args: []);
  }

  /// `Chatbot tư vấn sức khỏe`
  String get healthConsultingAi {
    return Intl.message(
      'Chatbot tư vấn sức khỏe',
      name: 'healthConsultingAi',
      desc: '',
      args: [],
    );
  }

  /// `Tên đăng nhập`
  String get userName {
    return Intl.message('Tên đăng nhập', name: 'userName', desc: '', args: []);
  }

  /// `Mật khẩu`
  String get password {
    return Intl.message('Mật khẩu', name: 'password', desc: '', args: []);
  }

  /// `Đăng nhập`
  String get login {
    return Intl.message('Đăng nhập', name: 'login', desc: '', args: []);
  }

  /// `Đăng ký`
  String get register {
    return Intl.message('Đăng ký', name: 'register', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Bạn không có tài khoản?`
  String get youDoNotHaveAccount {
    return Intl.message(
      'Bạn không có tài khoản?',
      name: 'youDoNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Bấm vào đây để đăng nhập`
  String get clickHereToRegister {
    return Intl.message(
      'Bấm vào đây để đăng nhập',
      name: 'clickHereToRegister',
      desc: '',
      args: [],
    );
  }

  /// `Trở lại đăng nhập`
  String get backToLogin {
    return Intl.message(
      'Trở lại đăng nhập',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã có tài khoản?`
  String get youHaveAccount {
    return Intl.message(
      'Bạn đã có tài khoản?',
      name: 'youHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Mật khẩu không giống nhau`
  String get passwordNotMatch {
    return Intl.message(
      'Mật khẩu không giống nhau',
      name: 'passwordNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Nhập lại mật khẩu`
  String get confirmPassword {
    return Intl.message(
      'Nhập lại mật khẩu',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get logout {
    return Intl.message('Đăng xuất', name: 'logout', desc: '', args: []);
  }

  /// `Bước đã đi`
  String get stepTaken {
    return Intl.message('Bước đã đi', name: 'stepTaken', desc: '', args: []);
  }

  /// `Bước`
  String get steps {
    return Intl.message('Bước', name: 'steps', desc: '', args: []);
  }

  /// `Calo đã đốt`
  String get caloriesBurned {
    return Intl.message(
      'Calo đã đốt',
      name: 'caloriesBurned',
      desc: '',
      args: [],
    );
  }

  /// `Tiếp tục`
  String get resume {
    return Intl.message('Tiếp tục', name: 'resume', desc: '', args: []);
  }

  /// `Tạm dừng`
  String get pause {
    return Intl.message('Tạm dừng', name: 'pause', desc: '', args: []);
  }

  /// `Đặt lại`
  String get reset {
    return Intl.message('Đặt lại', name: 'reset', desc: '', args: []);
  }

  /// `Trạng thái đi bộ`
  String get pedestrianStatus {
    return Intl.message(
      'Trạng thái đi bộ',
      name: 'pedestrianStatus',
      desc: '',
      args: [],
    );
  }

  /// `Đi bộ`
  String get walking {
    return Intl.message('Đi bộ', name: 'walking', desc: '', args: []);
  }

  /// `Dừng lại`
  String get stopped {
    return Intl.message('Dừng lại', name: 'stopped', desc: '', args: []);
  }

  /// `Quyền truy cập bị từ chối`
  String get permissionDenied {
    return Intl.message(
      'Quyền truy cập bị từ chối',
      name: 'permissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng cấp quyền truy cập vị trí cho ứng dụng để sử dụng chức năng này`
  String get permissionDeniedMessage {
    return Intl.message(
      'Vui lòng cấp quyền truy cập vị trí cho ứng dụng để sử dụng chức năng này',
      name: 'permissionDeniedMessage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
