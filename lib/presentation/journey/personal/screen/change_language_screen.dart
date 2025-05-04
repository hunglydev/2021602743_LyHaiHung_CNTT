import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/app_constant.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      builder: (controller) {
        Widget localeItem({
          required String label,
          required Locale localeValue,
          required Locale groupValue,
          required Function(dynamic value) onChange,
        }) {
          return AppButton(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              border: Border.all(
                color: localeValue == groupValue ? AppColor.primaryColor : Colors.grey,
                width: localeValue == groupValue ? 2 : 1,
              ),
            ),
            width: Get.width,
            height: 64,
            onPressed: () {
              onChange.call(localeValue);
            },
            child: Row(
              children: [
                Radio(
                  activeColor: AppColor.primaryColor,
                  value: localeValue,
                  groupValue: groupValue,
                  onChanged: (value) {},
                ),
                12.width,
                Text(label),
              ],
            ),
          );
        }

        return AppContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(
                title: AppLocalization.of(context).language,
              ),
              24.height,
              localeItem(
                label: AppLocalization.of(context).vietnamese,
                localeValue: AppConstant.availableLocales[0],
                groupValue: controller.currentLocale.value,
                onChange: (value) {
                  controller.updateLocale(value);
                },
              ),
              16.height,
              localeItem(
                label: AppLocalization.of(context).english,
                localeValue: AppConstant.availableLocales[1],
                groupValue: controller.currentLocale.value,
                onChange: (value) {
                  controller.updateLocale(value);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
