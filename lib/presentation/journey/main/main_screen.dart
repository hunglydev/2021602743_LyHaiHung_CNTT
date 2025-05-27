import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/domain/usecase/blood_pressure_usecase.dart';
import 'package:hunglydev_datn/domain/usecase/bmi_usecase.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_screen.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';

import '../../../common/constants/app_image.dart';
import '../../theme/app_color.dart';
import '../../widget/app_container.dart';
import '../alarm/alarm_screen.dart';
import '../alarm/widgets/alarm_add_button.dart';
import '../home/home_screen.dart';
import '../insight/insight_screen.dart';
import 'main_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with WidgetsBindingObserver {
  bool _hasCalledNotify = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if ((state == AppLifecycleState.inactive) && !_hasCalledNotify) {
      _hasCalledNotify = true;
      _notifyBeforeAppClose();
    }
  }

  Future<void> _notifyBeforeAppClose() async {
    try {
      final bmi = getIt.get<BMIUseCase>().getAll();
      final bloodPressure = getIt.get<BloodPressureUseCase>().getAll();
      final appController = Get.find<AppController>();
      final locale = appController.currentLocale.value.toLanguageTag();
      final userId = appController.currentUser.value.id;

      final response = await APIService.instance.request(
        ApiConstant.notifyUserByHealthData,
        DioMethod.post,
        param: {
          "userId": userId,
          "bmi": bmi.toString(),
          "bloodPressure": bloodPressure.toString(),
          "locale": locale,
        },
      );

      print("📤 notifyUserByHealthData response: ${response.data}");
    } catch (e) {
      print("❌ Lỗi khi gọi notify API: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) {
        return AppContainer(
          alignLayer: AlignmentDirectional.bottomEnd,
          coverScreenWidget: Obx(
            () {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 260),
                child: controller.currentTab.value != 2 ? const SizedBox.shrink() : const AddAlarmButton(),
              );
            },
          ),
          child: Scaffold(
            body: Obx(() {
              return IndexedStack(
                index: controller.currentTab.value,
                children: const [
                  HomeScreen(),
                  InsightScreen(),
                  AlarmScreen(),
                  PersonalScreen(),
                ],
              );
            }),
            bottomNavigationBar: Obx(() {
              return ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: AppColor.primaryColor,
                  onTap: controller.onPressTab,
                  currentIndex: controller.currentTab.value,
                  unselectedItemColor: AppColor.white.withOpacity(0.5),
                  unselectedFontSize: 12.0.sp,
                  unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  selectedItemColor: AppColor.white,
                  selectedFontSize: 12.0.sp,
                  selectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: CachedImageWidget(
                        height: 32,
                        url: AppImage.ic_home,
                        color: controller.currentTab.value == 0 ? AppColor.white : AppColor.white.withOpacity(0.5),
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: CachedImageWidget(
                        height: 32,
                        url: AppImage.ic_insight,
                        color: controller.currentTab.value == 1 ? AppColor.white : AppColor.white.withOpacity(0.5),
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: CachedImageWidget(
                        height: 32,
                        url: AppImage.ic_alarm,
                        color: controller.currentTab.value == 2 ? AppColor.white : AppColor.white.withOpacity(0.5),
                      ),
                      label: "",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.settings,
                        size: 32,
                        color: controller.currentTab.value == 3 ? AppColor.white : AppColor.white.withOpacity(0.5),
                      ),
                      label: "",
                    ),
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
