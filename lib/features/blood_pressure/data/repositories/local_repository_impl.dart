import 'package:hunglydev_datn/features/blood_pressure/data/datasource/local_data_source.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/local_repository.dart';

class LocalRepositoryImplement implements LocalRepository {
  final LocalDataSource _dataSource;
  const LocalRepositoryImplement(this._dataSource);

  @override
  Future<void> addAlarm(AlarmEntity alarm) {
    // TODO: implement addAlarm
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBMI(String key) {
    // TODO: implement deleteBMI
    throw UnimplementedError();
  }

  @override
  Future<void> deleteBloodPressure(String key) {
    // TODO: implement deleteBloodPressure
    throw UnimplementedError();
  }

  @override
  List<BMIEntity> filterBMI(int start, int end) {
    // TODO: implement filterBMI
    throw UnimplementedError();
  }

  @override
  List<BloodPressureEntity> filterBloodPressureDate(int start, int end) {
    // TODO: implement filterBloodPressureDate
    throw UnimplementedError();
  }

  @override
  List<AlarmEntity> getAlarms() {
    // TODO: implement getAlarms
    throw UnimplementedError();
  }

  @override
  List<BMIEntity> getAllBMI() {
    // TODO: implement getAllBMI
    throw UnimplementedError();
  }

  @override
  List<BloodPressureEntity> getAllBloodPressures() {
    // TODO: implement getAllBloodPressures
    throw UnimplementedError();
  }

  @override
  UserEntity? getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  int? getWeightUnitId() {
    // TODO: implement getWeightUnitId
    throw UnimplementedError();
  }

  @override
  Future<void> removeAlarm(AlarmEntity alarm) {
    // TODO: implement removeAlarm
    throw UnimplementedError();
  }

  @override
  Future<void> saveBMI(BMIEntity bmi) {
    // TODO: implement saveBMI
    throw UnimplementedError();
  }

  @override
  Future<void> saveBloodPressure(BloodPressureEntity bloodPressure) {
    // TODO: implement saveBloodPressure
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(UserEntity user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<bool> setWeightUnitId(int id) {
    // TODO: implement setWeightUnitId
    throw UnimplementedError();
  }

  @override
  Future<void> updateAlarm(AlarmEntity alarm) {
    // TODO: implement updateAlarm
    throw UnimplementedError();
  }

  @override
  Future<void> updateBMI(BMIEntity bmi) {
    // TODO: implement updateBMI
    throw UnimplementedError();
  }
}
