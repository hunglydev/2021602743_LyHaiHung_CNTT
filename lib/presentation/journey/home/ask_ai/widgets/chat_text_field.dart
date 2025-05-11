import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/presentation/journey/home/ask_ai/ask_ai_controller.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({
    super.key,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final TextEditingController _chatController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    _chatController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AskAIController>(
      builder: (controller) {
        _chatController.text = controller.chatContent.value;
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 0,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _chatController,
                  maxLines: 4,
                  minLines: 1,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                  ),
                  onChanged: (value) {
                    controller.chatContent.value = value;
                  },
                ),
              ),
              GestureDetector(onTap: () async {
                await controller.sendChat(_chatController.text);
              }, child: Obx(
                () {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: 32,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: controller.chatContent.value.isNotEmpty ? AppColor.primaryColor : AppColor.grayText,
                    ),
                    child: Icon(
                      Icons.arrow_upward_outlined,
                      size: 16,
                      color: controller.chatContent.value.isNotEmpty ? AppColor.white : AppColor.grayText2,
                    ),
                  );
                },
              )),
              8.width,
            ],
          ),
        );
      },
    );
  }
}
