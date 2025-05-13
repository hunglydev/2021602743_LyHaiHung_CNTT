import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/disable_glow_behavior.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/ask_ai_controller.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/widgets/chat_loading.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';
import 'package:hunglydev_datn/presentation/widget/app_loading.dart';

import 'widgets/chat_item.dart';
import 'widgets/chat_text_field.dart';

class AskAIScreen extends GetView<AskAIController> {
  const AskAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AskAIController>(
      builder: (controller) {
        return AppContainer(
          coverScreenWidget: Obx(
            () => controller.loadingState.value.isLoading ? const AppLoading() : const SizedBox.shrink(),
          ),
          child: Column(
            children: [
              AppHeader(
                title: AppLocalization.of(context).healthConsultingAi,
                leftWidget: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const DisableGlowBehavior(),
                  child: ListView.builder(
                    controller: controller.scrollController,
                    key: ValueKey(controller.listChat.length.toString()),
                    reverse: true, // ✅ Đẩy ngược từ dưới lên
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: controller.listChat.length,
                    itemBuilder: (context, index) {
                      final reversedIndex = controller.listChat.length - 1 - index;
                      final chatItem = controller.listChat[reversedIndex];

                      return ChatItem(
                        hasAnimated: controller.animatedMessages.contains(index.toString()),
                        onAnimated: () => controller.animatedMessages.add(index.toString()),
                        chatData: chatItem,
                        locale: controller.appController.currentLocale.value,
                      );
                    },
                  ),
                ),
              ),
              if (controller.isLoadingSendChat) const ChatLoading().paddingSymmetric(horizontal: 20),
              20.height,
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 12,
                  left: 16,
                  right: 16,
                  top: 8,
                ),
                child: ChatTextField(),
              ),
            ],
          ),
        );
      },
    );
  }
}
