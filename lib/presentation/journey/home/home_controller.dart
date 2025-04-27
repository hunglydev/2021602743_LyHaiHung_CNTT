import 'package:get/get.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/ask_ai_screen.dart';

import '../../../common/constants/app_route.dart';
import 'pedometer/pedometer_screen.dart';

class HomeController extends GetxController {
  void onPressHeartBeat() async {
    Get.toNamed(AppRoute.heartBeatScreen);
  }

  void onPressBloodPressure() async {
    Get.toNamed(AppRoute.bloodPressureScreen);
  }

  void onPressWeightAndBMI() async {
    Get.toNamed(AppRoute.weightBMI);
  }

  void onPressFoodScanner() async {
    Get.toNamed(AppRoute.foodScanner);
  }

  void onPressPedometer() async {
    Get.to(() => const PedometerScreen());
  }

  void onPressAskAi() async {
    Get.toNamed(AppRoute.askAIScreen);
  }
}
