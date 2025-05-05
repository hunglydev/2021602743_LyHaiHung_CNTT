import 'dart:ui';

import 'package:get/get.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';

import '../../../common/constants/app_constant.dart';
import '../../../common/util/app_util.dart';

class InsightController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<Map<String, dynamic>> insightList = <Map<String, dynamic>>[].obs;

  void loadData() async {
    final appController = Get.find<AppController>();
    final insights = await parseJsonFromAsset(appController.currentLocale.value == const Locale('vi', 'VN')
        ? AppConstant.insightAssetVi
        : AppConstant.insightAssetEn) as List<dynamic>;
    insightList.value = insights.map((e) => e as Map<String, dynamic>).toList();
  }

  @override
  void onInit() {
    loadData();
    isLoading.value = false;
    super.onInit();
  }
}
