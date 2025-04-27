import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/widgets/typing_indicator.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';

class ChatLoading extends StatelessWidget {
  const ChatLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36,
          height: 36,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: AppColor.lightGray,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            AppImage.icSmartToy,
            width: 20,
            height: 20,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.lightGray,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.all(
                  12,
                ),
                child: const TypingIndicator(),
              ),
            ],
          ).paddingOnly(
            left: 12,
          ),
        ),
      ],
    );
  }
}
