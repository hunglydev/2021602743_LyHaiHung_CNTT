import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/disable_glow_behavior.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/ask_ai_controller.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/widgets/chat_loading.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';

import 'widgets/chat_item.dart';
import 'widgets/chat_text_field.dart';

class AskAIScreen extends GetView<AskAIController> {
  const AskAIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AskAIController>(
      builder: (controller) {
        return AppContainer(
          child: Column(
            children: [
              const AppHeader(
                title: "",
              ),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const DisableGlowBehavior(),
                  child: Column(
                    children: [
                      Flexible(
                        child: ListView.builder(
                          reverse: true,
                          padding: EdgeInsets.zero,
                          itemCount: controller.listChat.length,
                          itemBuilder: (context, index) {
                            return ChatItem(
                              isMe: controller.listChat[index].isMe,
                              content: controller.listChat[index].content,
                            );
                          },
                        ),
                      ),
                      // ChatLoading(),
                      controller.isLoadingSendChat
                          ? const ChatLoading().paddingSymmetric(horizontal: 20)
                          : const SizedBox.shrink(),
                      20.height,
                    ],
                  ),
                ),
              ),
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
