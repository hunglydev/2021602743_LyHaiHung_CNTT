import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_screen.dart';
import 'package:hunglydev_datn/presentation/journey/personal/screen/account_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/constants/app_constant.dart';
import '../../../common/constants/app_route.dart';
import '../../controller/app_controller.dart';

class SplashController extends GetxController {
  late BuildContext context;
  RxString version = ''.obs;
  final AppController appController = Get.find<AppController>();
  bool isFirstOpenApp = true;

  @override
  void onReady() async {
    super.onReady();

    final prefs = await SharedPreferences.getInstance();
    String? language = prefs.getString('language');
    isFirstOpenApp = prefs.getBool("is_first_open_app") ?? true;
    appController.userLocation.value = prefs.getString("user_location") ?? "US";

    appController.updateLocale(
      AppConstant.availableLocales[int.tryParse(language ?? '') ?? 0],
    );
    await appController.getUser();
    print('-------------User: ${appController.currentUser.value.toString()}');
    appController.currentUser.value.id == 0
        ? Get.offAll(const AccountScreen(
            isRegister: true,
          ))
        : Get.offAndToNamed(AppRoute.mainScreen);
  }
}
