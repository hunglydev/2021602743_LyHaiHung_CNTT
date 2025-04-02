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

  /// `Hủy`
  String get cancel {
    return Intl.message('Hủy', name: 'cancel', desc: '', args: []);
  }

  /// `Không có Internet`
  String get noNetTitle {
    return Intl.message(
      'Không có Internet',
      name: 'noNetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vui lòng kiểm tra kết nối của bạn`
  String get noNetContent {
    return Intl.message(
      'Vui lòng kiểm tra kết nối của bạn',
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

  /// `Gỡ quảng cáo`
  String get removeAds {
    return Intl.message('Gỡ quảng cáo', name: 'removeAds', desc: '', args: []);
  }

  /// `Chính sách quyền riêng tư`
  String get privacy {
    return Intl.message(
      'Chính sách quyền riêng tư',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Điều khoản dịch vụ`
  String get termOfCondition {
    return Intl.message(
      'Điều khoản dịch vụ',
      name: 'termOfCondition',
      desc: '',
      args: [],
    );
  }

  /// `Liên hệ`
  String get contactUs {
    return Intl.message('Liên hệ', name: 'contactUs', desc: '', args: []);
  }

  /// `Chia sẻ ứng dụng`
  String get shareApp {
    return Intl.message(
      'Chia sẻ ứng dụng',
      name: 'shareApp',
      desc: '',
      args: [],
    );
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

  /// `Ứng dụng khác`
  String get moreApp {
    return Intl.message('Ứng dụng khác', name: 'moreApp', desc: '', args: []);
  }

  /// `Lỗi tải quảng cáo`
  String get errorLoadAds {
    return Intl.message(
      'Lỗi tải quảng cáo',
      name: 'errorLoadAds',
      desc: '',
      args: [],
    );
  }

  /// `Chia sẻ ứng dụng này với bạn bè`
  String get shareMessage {
    return Intl.message(
      'Chia sẻ ứng dụng này với bạn bè',
      name: 'shareMessage',
      desc: '',
      args: [],
    );
  }

  /// `Sức khỏe máu`
  String get bloodHealth {
    return Intl.message(
      'Sức khỏe máu',
      name: 'bloodHealth',
      desc: '',
      args: [],
    );
  }

  /// `Nhịp tim`
  String get heartRate {
    return Intl.message('Nhịp tim', name: 'heartRate', desc: '', args: []);
  }

  /// `Mô tả nhịp tim`
  String get descriptionHeartRate {
    return Intl.message(
      'Mô tả nhịp tim',
      name: 'descriptionHeartRate',
      desc: '',
      args: [],
    );
  }

  /// `Đo nhịp tim`
  String get heartRateButton {
    return Intl.message(
      'Đo nhịp tim',
      name: 'heartRateButton',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp`
  String get bloodPressure {
    return Intl.message('Huyết áp', name: 'bloodPressure', desc: '', args: []);
  }

  /// `Lượng đường trong máu`
  String get bloodSugar {
    return Intl.message(
      'Lượng đường trong máu',
      name: 'bloodSugar',
      desc: '',
      args: [],
    );
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

  /// `Máy quét thực phẩm`
  String get foodScanner {
    return Intl.message(
      'Máy quét thực phẩm',
      name: 'foodScanner',
      desc: '',
      args: [],
    );
  }

  /// `Quét thực phẩm`
  String get scanFood {
    return Intl.message('Quét thực phẩm', name: 'scanFood', desc: '', args: []);
  }

  /// `Trang chủ`
  String get home {
    return Intl.message('Trang chủ', name: 'home', desc: '', args: []);
  }

  /// `Phân tích`
  String get insights {
    return Intl.message('Phân tích', name: 'insights', desc: '', args: []);
  }

  /// `Báo thức`
  String get alarm {
    return Intl.message('Báo thức', name: 'alarm', desc: '', args: []);
  }

  /// `Xuất`
  String get export {
    return Intl.message('Xuất', name: 'export', desc: '', args: []);
  }

  /// `Trung bình`
  String get average {
    return Intl.message('Trung bình', name: 'average', desc: '', args: []);
  }

  /// `Thấp nhất`
  String get min {
    return Intl.message('Thấp nhất', name: 'min', desc: '', args: []);
  }

  /// `Cao nhất`
  String get max {
    return Intl.message('Cao nhất', name: 'max', desc: '', args: []);
  }

  /// `Đo ngay`
  String get measureNow {
    return Intl.message('Đo ngay', name: 'measureNow', desc: '', args: []);
  }

  /// `Đặt báo thức`
  String get setAlarm {
    return Intl.message('Đặt báo thức', name: 'setAlarm', desc: '', args: []);
  }

  /// `Thêm dữ liệu`
  String get addData {
    return Intl.message('Thêm dữ liệu', name: 'addData', desc: '', args: []);
  }

  /// `Dừng`
  String get stop {
    return Intl.message('Dừng', name: 'stop', desc: '', args: []);
  }

  /// `Thêm`
  String get add {
    return Intl.message('Thêm', name: 'add', desc: '', args: []);
  }

  /// `Đang đo...`
  String get measuring {
    return Intl.message('Đang đo...', name: 'measuring', desc: '', args: []);
  }

  /// `Đặt ngón tay lên camera`
  String get placeYourFinger {
    return Intl.message(
      'Đặt ngón tay lên camera',
      name: 'placeYourFinger',
      desc: '',
      args: [],
    );
  }

  /// `Đo ngay hoặc thêm thủ công`
  String get measureNowOrAdd {
    return Intl.message(
      'Đo ngay hoặc thêm thủ công',
      name: 'measureNowOrAdd',
      desc: '',
      args: [],
    );
  }

  /// `Đo`
  String get measure {
    return Intl.message('Đo', name: 'measure', desc: '', args: []);
  }

  /// `Nâng cấp Premium`
  String get goPremium {
    return Intl.message(
      'Nâng cấp Premium',
      name: 'goPremium',
      desc: '',
      args: [],
    );
  }

  /// `Xem quảng cáo`
  String get watchingAds {
    return Intl.message(
      'Xem quảng cáo',
      name: 'watchingAds',
      desc: '',
      args: [],
    );
  }

  /// `Quyền truy cập camera bị từ chối`
  String get permissionCameraDenied01 {
    return Intl.message(
      'Quyền truy cập camera bị từ chối',
      name: 'permissionCameraDenied01',
      desc: '',
      args: [],
    );
  }

  /// `Hãy cấp quyền trong cài đặt`
  String get permissionCameraSetting01 {
    return Intl.message(
      'Hãy cấp quyền trong cài đặt',
      name: 'permissionCameraSetting01',
      desc: '',
      args: [],
    );
  }

  /// `Quyền truy cập camera bị từ chối lần 2`
  String get permissionCameraDenied02 {
    return Intl.message(
      'Quyền truy cập camera bị từ chối lần 2',
      name: 'permissionCameraDenied02',
      desc: '',
      args: [],
    );
  }

  /// `Hãy cấp quyền trong cài đặt lần 2`
  String get permissionCameraSetting02 {
    return Intl.message(
      'Hãy cấp quyền trong cài đặt lần 2',
      name: 'permissionCameraSetting02',
      desc: '',
      args: [],
    );
  }

  /// `Nhịp tim khi nghỉ`
  String get restingHeartRate {
    return Intl.message(
      'Nhịp tim khi nghỉ',
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

  /// `Nhịp tim chậm`
  String get rhSlowMessage {
    return Intl.message(
      'Nhịp tim chậm',
      name: 'rhSlowMessage',
      desc: '',
      args: [],
    );
  }

  /// `Nhịp tim bình thường`
  String get rhNormalMessage {
    return Intl.message(
      'Nhịp tim bình thường',
      name: 'rhNormalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Nhịp tim nhanh`
  String get rhFastMessage {
    return Intl.message(
      'Nhịp tim nhanh',
      name: 'rhFastMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thêm thành công`
  String get addSuccess {
    return Intl.message(
      'Thêm thành công',
      name: 'addSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Ngày`
  String get date {
    return Intl.message('Ngày', name: 'date', desc: '', args: []);
  }

  /// `Thời gian`
  String get time {
    return Intl.message('Thời gian', name: 'time', desc: '', args: []);
  }

  /// `Giới tính`
  String get gender {
    return Intl.message('Giới tính', name: 'gender', desc: '', args: []);
  }

  /// `Xóa`
  String get delete {
    return Intl.message('Xóa', name: 'delete', desc: '', args: []);
  }

  /// `Xóa dữ liệu`
  String get deleteData {
    return Intl.message('Xóa dữ liệu', name: 'deleteData', desc: '', args: []);
  }

  /// `Bạn có chắc chắn muốn xóa?`
  String get deleteDataConfirm {
    return Intl.message(
      'Bạn có chắc chắn muốn xóa?',
      name: 'deleteDataConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Tiếng Anh`
  String get eng {
    return Intl.message('Tiếng Anh', name: 'eng', desc: '', args: []);
  }

  /// `Tiếng Việt`
  String get vi {
    return Intl.message('Tiếng Việt', name: 'vi', desc: '', args: []);
  }

  /// `Thêm bản ghi của bạn để xem thống kê`
  String get addYourRecordToSeeStatistics {
    return Intl.message(
      'Thêm bản ghi của bạn để xem thống kê',
      name: 'addYourRecordToSeeStatistics',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp tâm thu`
  String get systolic {
    return Intl.message(
      'Huyết áp tâm thu',
      name: 'systolic',
      desc: '',
      args: [],
    );
  }

  /// `Huyết áp tâm trương`
  String get diastolic {
    return Intl.message(
      'Huyết áp tâm trương',
      name: 'diastolic',
      desc: '',
      args: [],
    );
  }

  /// `Hạ huyết áp`
  String get hypotension {
    return Intl.message('Hạ huyết áp', name: 'hypotension', desc: '', args: []);
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

  /// `Khoảng huyết áp tâm thu hoặc huyết áp tâm trương`
  String get systolicRangeOrDiastolicRange {
    return Intl.message(
      'Khoảng huyết áp tâm thu hoặc huyết áp tâm trương',
      name: 'systolicRangeOrDiastolicRange',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Mạch`
  String get pulse {
    return Intl.message('Mạch', name: 'pulse', desc: '', args: []);
  }

  /// `Tâm thu và tâm trương`
  String get sysAndDIA {
    return Intl.message(
      'Tâm thu và tâm trương',
      name: 'sysAndDIA',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp hạ huyết áp`
  String get hypotensionMessage {
    return Intl.message(
      'Thông điệp hạ huyết áp',
      name: 'hypotensionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp bình thường`
  String get normalMessage {
    return Intl.message(
      'Thông điệp bình thường',
      name: 'normalMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp huyết áp cao`
  String get elevatedMessage {
    return Intl.message(
      'Thông điệp huyết áp cao',
      name: 'elevatedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp tăng huyết áp giai đoạn 1`
  String get hypertensionStage1Message {
    return Intl.message(
      'Thông điệp tăng huyết áp giai đoạn 1',
      name: 'hypertensionStage1Message',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp tăng huyết áp giai đoạn 2`
  String get hypertensionStage2Message {
    return Intl.message(
      'Thông điệp tăng huyết áp giai đoạn 2',
      name: 'hypertensionStage2Message',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp khủng hoảng tăng huyết áp`
  String get hypertensionCrisisMessage {
    return Intl.message(
      'Thông điệp khủng hoảng tăng huyết áp',
      name: 'hypertensionCrisisMessage',
      desc: '',
      args: [],
    );
  }

  /// `Chỉnh sửa`
  String get edit {
    return Intl.message('Chỉnh sửa', name: 'edit', desc: '', args: []);
  }

  /// `Cho`
  String get forSomething {
    return Intl.message('Cho', name: 'forSomething', desc: '', args: []);
  }

  /// `Loại`
  String get type {
    return Intl.message('Loại', name: 'type', desc: '', args: []);
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

  /// `Chỉnh sửa dữ liệu thành công`
  String get editDataSuccess {
    return Intl.message(
      'Chỉnh sửa dữ liệu thành công',
      name: 'editDataSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Chỉnh sửa dữ liệu thất bại`
  String get editDataFailed {
    return Intl.message(
      'Chỉnh sửa dữ liệu thất bại',
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

  /// `Trạng thái đường huyết`
  String get bloodSugarState {
    return Intl.message(
      'Trạng thái đường huyết',
      name: 'bloodSugarState',
      desc: '',
      args: [],
    );
  }

  /// `Tất cả trạng thái đường huyết`
  String get bloodSugarAllState {
    return Intl.message(
      'Tất cả trạng thái đường huyết',
      name: 'bloodSugarAllState',
      desc: '',
      args: [],
    );
  }

  /// `Trạng thái đường huyết mặc định`
  String get bloodSugarDefaultState {
    return Intl.message(
      'Trạng thái đường huyết mặc định',
      name: 'bloodSugarDefaultState',
      desc: '',
      args: [],
    );
  }

  /// `Mã trong khi nhịn ăn`
  String get duringFastingCode {
    return Intl.message(
      'Mã trong khi nhịn ăn',
      name: 'duringFastingCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã trước khi ăn`
  String get beforeEatingCode {
    return Intl.message(
      'Mã trước khi ăn',
      name: 'beforeEatingCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã sau 1 giờ ăn`
  String get afterEating1hCode {
    return Intl.message(
      'Mã sau 1 giờ ăn',
      name: 'afterEating1hCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã sau 2 giờ ăn`
  String get afterEating2hCode {
    return Intl.message(
      'Mã sau 2 giờ ăn',
      name: 'afterEating2hCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã trước khi đi ngủ`
  String get beforeBedtimeCode {
    return Intl.message(
      'Mã trước khi đi ngủ',
      name: 'beforeBedtimeCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã trước khi tập thể dục`
  String get beforeWorkoutCode {
    return Intl.message(
      'Mã trước khi tập thể dục',
      name: 'beforeWorkoutCode',
      desc: '',
      args: [],
    );
  }

  /// `Mã sau khi tập thể dục`
  String get afterWorkoutCode {
    return Intl.message(
      'Mã sau khi tập thể dục',
      name: 'afterWorkoutCode',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đường huyết thấp`
  String get bloodSugarInforLow {
    return Intl.message(
      'Thông tin đường huyết thấp',
      name: 'bloodSugarInforLow',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đường huyết bình thường`
  String get bloodSugarInforNormal {
    return Intl.message(
      'Thông tin đường huyết bình thường',
      name: 'bloodSugarInforNormal',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đường huyết tiền tiểu đường`
  String get bloodSugarInforPreDiabetes {
    return Intl.message(
      'Thông tin đường huyết tiền tiểu đường',
      name: 'bloodSugarInforPreDiabetes',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đường huyết tiểu đường`
  String get bloodSugarInforDiabetes {
    return Intl.message(
      'Thông tin đường huyết tiểu đường',
      name: 'bloodSugarInforDiabetes',
      desc: '',
      args: [],
    );
  }

  /// `Thông tin đường huyết`
  String get bloodSugarInfo {
    return Intl.message(
      'Thông tin đường huyết',
      name: 'bloodSugarInfo',
      desc: '',
      args: [],
    );
  }

  /// `Theo dõi sức khỏe của bạn`
  String get trackYourHealth {
    return Intl.message(
      'Theo dõi sức khỏe của bạn',
      name: 'trackYourHealth',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra nhịp tim của bạn`
  String get checkYourHeartRate {
    return Intl.message(
      'Kiểm tra nhịp tim của bạn',
      name: 'checkYourHeartRate',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra cân nặng và BMI của bạn`
  String get checkYourWeightAndBMI {
    return Intl.message(
      'Kiểm tra cân nặng và BMI của bạn',
      name: 'checkYourWeightAndBMI',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra đường huyết của bạn`
  String get checkYourBloodSugar {
    return Intl.message(
      'Kiểm tra đường huyết của bạn',
      name: 'checkYourBloodSugar',
      desc: '',
      args: [],
    );
  }

  /// `Kiểm tra huyết áp của bạn`
  String get checkYourBloodPressure {
    return Intl.message(
      'Kiểm tra huyết áp của bạn',
      name: 'checkYourBloodPressure',
      desc: '',
      args: [],
    );
  }

  /// `Yêu cầu quyền`
  String get requestPermission {
    return Intl.message(
      'Yêu cầu quyền',
      name: 'requestPermission',
      desc: '',
      args: [],
    );
  }

  /// `Không có thông tin`
  String get noInformation {
    return Intl.message(
      'Không có thông tin',
      name: 'noInformation',
      desc: '',
      args: [],
    );
  }

  /// `Kết quả quét`
  String get scanResult {
    return Intl.message('Kết quả quét', name: 'scanResult', desc: '', args: []);
  }

  /// `QR Code`
  String get qrCode {
    return Intl.message('QR Code', name: 'qrCode', desc: '', args: []);
  }

  /// `Mã vạch`
  String get barcode {
    return Intl.message('Mã vạch', name: 'barcode', desc: '', args: []);
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

  /// `Cập nhật báo thức thành công`
  String get updateAlarmSuccess {
    return Intl.message(
      'Cập nhật báo thức thành công',
      name: 'updateAlarmSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xóa báo thức thành công`
  String get deleteAlarmSuccess {
    return Intl.message(
      'Xóa báo thức thành công',
      name: 'deleteAlarmSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận xóa báo thức`
  String get deleteAlarmConfirmMsg {
    return Intl.message(
      'Xác nhận xóa báo thức',
      name: 'deleteAlarmConfirmMsg',
      desc: '',
      args: [],
    );
  }

  /// `Không có báo thức`
  String get noAlarm {
    return Intl.message(
      'Không có báo thức',
      name: 'noAlarm',
      desc: '',
      args: [],
    );
  }

  /// `Xóa báo thức thất bại`
  String get deleteAlarmFailed {
    return Intl.message(
      'Xóa báo thức thất bại',
      name: 'deleteAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Cập nhật báo thức thất bại`
  String get updateAlarmFailed {
    return Intl.message(
      'Cập nhật báo thức thất bại',
      name: 'updateAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Thêm báo thức thất bại`
  String get addAlarmFailed {
    return Intl.message(
      'Thêm báo thức thất bại',
      name: 'addAlarmFailed',
      desc: '',
      args: [],
    );
  }

  /// `Xác nhận`
  String get confirm {
    return Intl.message('Xác nhận', name: 'confirm', desc: '', args: []);
  }

  /// `Nhắc nhở ghi chép`
  String get remindToRecord {
    return Intl.message(
      'Nhắc nhở ghi chép',
      name: 'remindToRecord',
      desc: '',
      args: [],
    );
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

  /// `Thiếu cân`
  String get underweight {
    return Intl.message('Thiếu cân', name: 'underweight', desc: '', args: []);
  }

  /// `Thừa cân`
  String get overweight {
    return Intl.message('Thừa cân', name: 'overweight', desc: '', args: []);
  }

  /// `Béo phì hạng I`
  String get obeseClassI {
    return Intl.message(
      'Béo phì hạng I',
      name: 'obeseClassI',
      desc: '',
      args: [],
    );
  }

  /// `Béo phì hạng II`
  String get obeseClassII {
    return Intl.message(
      'Béo phì hạng II',
      name: 'obeseClassII',
      desc: '',
      args: [],
    );
  }

  /// `Béo phì hạng III`
  String get obeseClassIII {
    return Intl.message(
      'Béo phì hạng III',
      name: 'obeseClassIII',
      desc: '',
      args: [],
    );
  }

  /// `Thông điệp BMI`
  String get bmiMessage {
    return Intl.message(
      'Thông điệp BMI',
      name: 'bmiMessage',
      desc: '',
      args: [],
    );
  }

  /// `BMI`
  String get bmi {
    return Intl.message('BMI', name: 'bmi', desc: '', args: []);
  }

  /// `Đăng ký Premium`
  String get subscribeTitle {
    return Intl.message(
      'Đăng ký Premium',
      name: 'subscribeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Nhận tất cả các tính năng không giới hạn`
  String get descriptionSub {
    return Intl.message(
      'Nhận tất cả các tính năng không giới hạn',
      name: 'descriptionSub',
      desc: '',
      args: [],
    );
  }

  /// `Mô tả đăng ký 1`
  String get descriptionSub1 {
    return Intl.message(
      'Mô tả đăng ký 1',
      name: 'descriptionSub1',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 1`
  String get subscribeContentIos1 {
    return Intl.message(
      'Nội dung đăng ký iOS 1',
      name: 'subscribeContentIos1',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 2`
  String get subscribeContentIos2 {
    return Intl.message(
      'Nội dung đăng ký iOS 2',
      name: 'subscribeContentIos2',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 3`
  String get subscribeContentIos3 {
    return Intl.message(
      'Nội dung đăng ký iOS 3',
      name: 'subscribeContentIos3',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 4`
  String get subscribeContentIos4 {
    return Intl.message(
      'Nội dung đăng ký iOS 4',
      name: 'subscribeContentIos4',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 5`
  String get subscribeContentIos5 {
    return Intl.message(
      'Nội dung đăng ký iOS 5',
      name: 'subscribeContentIos5',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký iOS 6`
  String get subscribeContentIos6 {
    return Intl.message(
      'Nội dung đăng ký iOS 6',
      name: 'subscribeContentIos6',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 1`
  String get subscribeContentAndroid1 {
    return Intl.message(
      'Nội dung đăng ký Android 1',
      name: 'subscribeContentAndroid1',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 2`
  String get subscribeContentAndroid2 {
    return Intl.message(
      'Nội dung đăng ký Android 2',
      name: 'subscribeContentAndroid2',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 3`
  String get subscribeContentAndroid3 {
    return Intl.message(
      'Nội dung đăng ký Android 3',
      name: 'subscribeContentAndroid3',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 4`
  String get subscribeContentAndroid4 {
    return Intl.message(
      'Nội dung đăng ký Android 4',
      name: 'subscribeContentAndroid4',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 5`
  String get subscribeContentAndroid5 {
    return Intl.message(
      'Nội dung đăng ký Android 5',
      name: 'subscribeContentAndroid5',
      desc: '',
      args: [],
    );
  }

  /// `Nội dung đăng ký Android 6`
  String get subscribeContentAndroid6 {
    return Intl.message(
      'Nội dung đăng ký Android 6',
      name: 'subscribeContentAndroid6',
      desc: '',
      args: [],
    );
  }

  /// `Chính sách quyền riêng tư`
  String get privacyPolicy {
    return Intl.message(
      'Chính sách quyền riêng tư',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Điều khoản dịch vụ`
  String get termService {
    return Intl.message(
      'Điều khoản dịch vụ',
      name: 'termService',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký tự động gia hạn`
  String get subscribeAutoRenewable {
    return Intl.message(
      'Đăng ký tự động gia hạn',
      name: 'subscribeAutoRenewable',
      desc: '',
      args: [],
    );
  }

  /// `Mỗi năm`
  String get perYear {
    return Intl.message('Mỗi năm', name: 'perYear', desc: '', args: []);
  }

  /// `Mỗi tháng`
  String get perMonth {
    return Intl.message('Mỗi tháng', name: 'perMonth', desc: '', args: []);
  }

  /// `Mỗi tuần`
  String get perWeek {
    return Intl.message('Mỗi tuần', name: 'perWeek', desc: '', args: []);
  }

  /// `Chỉ`
  String get only {
    return Intl.message('Chỉ', name: 'only', desc: '', args: []);
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
