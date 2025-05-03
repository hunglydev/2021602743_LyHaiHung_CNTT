import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_controller.dart';
import 'package:hunglydev_datn/presentation/journey/personal/widget/setting_item.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';

class PersonalScreen extends GetView<PersonalController> {
  const PersonalScreen({super.key});
  @override
  Widget build(BuildContext context) {
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
                const Text("Full name:"),
              ],
            ),
          ),
          24.height,
          SettingItem(
            onPress: () {},
            prefixIcon: const Icon(
              Icons.person,
            ),
            label: "Account",
          ),
          24.height,
          SettingItem(
            onPress: () {},
            prefixIcon: const Icon(
              Icons.person,
            ),
            label: "Account",
          ),
          24.height,
          SettingItem(
            onPress: () {},
            prefixIcon: const Icon(
              Icons.person,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
