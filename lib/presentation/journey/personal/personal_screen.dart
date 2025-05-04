import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_controller.dart';
import 'package:hunglydev_datn/presentation/journey/personal/screen/account_screen.dart';
import 'package:hunglydev_datn/presentation/journey/personal/screen/change_language_screen.dart';
import 'package:hunglydev_datn/presentation/journey/personal/widget/setting_item.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final appController = Get.find<AppController>();

    return GetBuilder<PersonalController>(
      tag: 'personal',
      init: PersonalController(),
      builder: (controller) {
        return AppContainer(
          child: Column(
            children: [
              AppHeader(
                title: AppLocalization.of(context).setting,
                leftWidget: const SizedBox(width: 40.0),
                titleStyle: const TextStyle(fontWeight: FontWeight.w500),
              ),
              Center(
                child: Column(
                  children: [
                    24.height,
                    Container(
                      width: 64,
                      height: 64,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                    12.height,
                    if (!isEmpty(controller.currentUserModel)) Text(controller.currentUserModel!.name),
                  ],
                ),
              ),
              24.height,
              SettingItem(
                onPress: () {
                  Get.to(const AccountScreen());
                },
                prefixIcon: const Icon(
                  Icons.person,
                ),
                label: AppLocalization.of(context).account,
              ),
              24.height,
              SettingItem(
                onPress: () {
                  Get.to(ChangeLanguageScreen());
                },
                prefixIcon: CachedImageWidget(
                  url: appController.currentLocale.value == const Locale('vi', 'VN') ? AppImage.icVI : AppImage.icUS,
                  height: 24,
                ),
                label: AppLocalization.of(context).language,
              ),
              24.height,
              SettingItem(
                onPress: () {},
                prefixIcon: const Icon(
                  Icons.person,
                ),
                label: AppLocalization.of(context).termAndService,
              ),
            ],
          ),
        );
      },
    );
  }
}
