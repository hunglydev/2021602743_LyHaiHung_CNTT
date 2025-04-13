import 'package:hive/hive.dart';
import 'package:hunglydev_datn/config/hive_config/hive_constant.dart';
import 'package:hunglydev_datn/features/app/data/user_model.dart';
import 'package:hunglydev_datn/features/blood_pressure/data/models/blood_pressure.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class HiveConfig {
  late Box<UserModel> userBox;
  // late Box<AlarmModel> alarmBox;
  late Box<BloodPressureModel> bloodPressureBox;
  // late Box<BMIModel> bmiBox;

  Future<void> init() async {
    final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);
    Hive.registerAdapter(UserModelAdapter());
    // Hive.registerAdapter(AlarmModelAdapter());
    // Hive.registerAdapter(AlarmTypeAdapter());
    userBox = await Hive.openBox(HiveBox.userBox);
    // alarmBox = await Hive.openBox(HiveBox.alarmBox);
    Hive.registerAdapter(BloodPressureModelAdapter());
    bloodPressureBox = await Hive.openBox(HiveBox.bloodPressureBox);
    // Hive.registerAdapter(BMIModelAdapter());
    // bmiBox = await Hive.openBox(HiveBox.bmiBox);
  }

  void dispose() {
    userBox.compact();
    // alarmBox.compact();
    bloodPressureBox.compact();
    // bmiBox.compact();
    Hive.close();
  }
}
