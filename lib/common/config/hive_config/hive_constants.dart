class HiveTypeConstants {
  static const userModel = 1;
  static const alarmModel = 2;
  static const bloodPressureModel = 3;
  static const alarmType = 4;
  static const bmiModel = 5;
  static const bloodSugar = 6;
}

class HiveKey {
  static const String userModel = "userModel";
  // static String alarmModel(int userId) => "alarmModel+$userId";
  // static String alarmType(int userId) => "alarmType$userId";
  // static String bmiModel(int userId) => "bmiModel$userId";
}

class HiveBox {
  static const String userBox = "userBox";
  static String bloodPressureBox(int userId) => "bloodPressureBox$userId";
  static const String alarmBox = "alamBox";
  static String bmiBox(int userId) => "bmiBox$userId";
}
