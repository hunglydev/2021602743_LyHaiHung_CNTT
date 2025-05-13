import 'package:flutter/material.dart';
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
import 'package:url_launcher/url_launcher.dart';

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
                    CachedImageWidget(
                      url: appController.currentUser.value.gender == 0 ? AppImage.imageBoy : AppImage.imageGirl,
                      height: 80,
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
                  Get.to(const ChangeLanguageScreen());
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
                  Icons.local_police,
                ),
                label: AppLocalization.of(context).termAndService,
              ),
              24.height,
              SettingItem(
                onPress: () {
                  controller.logout();
                },
                prefixIcon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                label: AppLocalization.of(context).logout,
                labelColor: Colors.white,
                color: Colors.red,
              ),
              24.height,
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  12.width,
                  Text(AppLocalization.of(context).contactWithUs),
                  12.width,
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 20),
              12.height,
              Center(
                child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse('https://www.facebook.com/lyhaihung.1811/'));
                    },
                    child: const CachedImageWidget(url: AppImage.logoFacebook, height: 40)),
              ),
              const Spacer(),
              Center(
                child: Text("${AppLocalization.of(context).version} ${appController.packageInfo.version}"),
              ),
              24.height,
            ],
          ),
        );
      },
    );
  }
}
