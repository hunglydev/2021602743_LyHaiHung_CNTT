import 'package:get/get.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/ask_ai_controller.dart';

class AskAiBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AskAIController());
  }
}
