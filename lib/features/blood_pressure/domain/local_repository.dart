import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';

abstract class LocalRepository {
  Future<void> saveUser(UserEntity user);
  UserEntity? getUser();

  List<AlarmEntity> getAlarms();
  Future<void> removeAlarm(AlarmEntity alarm);
  Future<void> addAlarm(AlarmEntity alarm);
  Future<void> updateAlarm(AlarmEntity alarm);

  Future<void> saveBloodPressure(BloodPressureEntity bloodPressure);
  Future<void> deleteBloodPressure(String key);
  List<BloodPressureEntity> getAllBloodPressures();
  List<BloodPressureEntity> filterBloodPressureDate(int start, int end);

  Future<void> saveBMI(BMIEntity bmi);
  List<BMIEntity> filterBMI(int start, int end);
  List<BMIEntity> getAllBMI();
  Future<void> updateBMI(BMIEntity bmi);
  Future<void> deleteBMI(String key);

  // Other preference methods
  Future<bool> setWeightUnitId(int id);
  int? getWeightUnitId();
}
