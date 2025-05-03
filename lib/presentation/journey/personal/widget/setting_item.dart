import 'package:flutter/material.dart';
import 'package:hunglydev_datn/common/mixin/alarm_dialog_mixin.dart';
import 'package:hunglydev_datn/common/util/extensions/context_extension.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';

class SettingItem extends StatelessWidget {
  final VoidCallback onPress;
  final String label;
  final Widget prefixIcon;
  const SettingItem({
    super.key,
    required this.onPress,
    required this.prefixIcon,
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return AppButton(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: AppColor.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          spreadRadius: 0,
        )
      ],
      onPressed: onPress,
      width: context.screenWidth,
      height: 48,
      child: Row(
        children: [
          prefixIcon,
          12.width,
          Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
