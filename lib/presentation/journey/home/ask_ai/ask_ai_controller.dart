import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/domain/model/blood_pressure_model.dart';
import 'package:hunglydev_datn/domain/model/bmi_model.dart';
import 'package:hunglydev_datn/domain/model/chat_data.dart';
import 'package:hunglydev_datn/domain/usecase/blood_pressure_usecase.dart';
import 'package:hunglydev_datn/domain/usecase/bmi_usecase.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';

class AskAIController extends GetxController {
  Set<String> animatedMessages = {};
  List<ChatData> listChat = [];
  bool isLoadingSendChat = false;
  Rx<LoadingState> loadingState = LoadingState.pure.obs;
  RxString chatContent = "".obs;
  final ScrollController scrollController = ScrollController();
  final BMIUseCase _bmiUseCase = getIt.get<BMIUseCase>();
  final BloodPressureUseCase _bloodPressureUseCase = getIt.get<BloodPressureUseCase>();
  List<BMIModel>? listBmi;
  Rx<bool> isLoadingMore = false.obs;
  List<BloodPressureModel>? listBloodPressure;
  final AppController appController = Get.find<AppController>();
  int page = 1;
  @override
  void onInit() {
    listBmi = _bmiUseCase.getAll();

    listBloodPressure = _bloodPressureUseCase.getAll();

    scrollController.addListener(_onScroll);
    loadMore();
    super.onInit();
  }

  void _onScroll() {
    if (scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
      loadMore();
    }
  }

  Future<void> loadMore() async {
    if (isLoadingMore.value) return;
    isLoadingMore.value = true;
    loadingState.value = LoadingState.loading;
    final res = await APIService.instance.request(
      ApiConstant.getChatHistory(
        userId: appController.currentUser.value.id,
        page: page,
      ),
      DioMethod.get,
    );
    print("_-------------api");
    if (res.data['status'] == 'success') {
      final items = res.data['items'] as List;
      List<ChatData> newChats = [];
      for (var item in items) {
        print('------item: ${item.toString()}');

        newChats.add(ChatData.fromJson(item));
      }
      // Thêm dữ liệu mới vào đầu danh sách hiện tại
      listChat.insertAll(0, newChats.reversed); // reversed vì ListView đang reverse: true
      page++; // Tăng page sau khi load thành công
    } else {
      listChat.insert(
          0,
          ChatData(
            content: AppLocalization.current.someThingWentWrong,
            isMe: false,
          ));
    }
    loadingState.value = LoadingState.finish;

    isLoadingMore.value = false;
    update();
  }

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
        "userId": appController.currentUser.value.id, // <-- thêm userId
        "prompt": content,
        "bloodPressure": listBloodPressure.toString(),
        "bmi": listBmi.toString(),
        "locale": appController.currentLocale.value.toLanguageTag(),
      },
    );
    if (res.data['status'] == 'success') {
      listChat.add(ChatData.fromJson(res.data['result']));
    } else {
      listChat.add(ChatData(content: AppLocalization.current.someThingWentWrong, isMe: false));
    }
    isLoadingSendChat = false;
    update();
    await scrollToBottom();
  }
}
