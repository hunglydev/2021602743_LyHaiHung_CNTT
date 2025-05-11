import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/domain/model/chat_data.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';

class AskAIController extends GetxController {
  List<ChatData> listChat = [];
  bool isLoadingSendChat = false;
  RxString chatContent = "".obs;
  final ScrollController scrollController = ScrollController();
  final AppController _appController = Get.find<AppController>();
  Future<void> scrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> sendChat(String content) async {
    listChat.add(ChatData(content: content, isMe: true));
    isLoadingSendChat = true;
    chatContent.value = "";
    update();
    await scrollToBottom();

    final res = await APIService.instance.request(
      ApiConstant.sendChat,
      DioMethod.post,
      param: {
        "userId": _appController.currentUser.value.id, // <-- thêm userId
        "prompt": content,
      },
    );
    if (res.data['status'] == 'success') {
      listChat.add(ChatData(content: res.data["result"], isMe: false));
    } else {
      listChat.add(ChatData(content: AppLocalization.current.someThingWentWrong, isMe: false));
    }
    isLoadingSendChat = false;
    update();
    await scrollToBottom();
  }
}
