import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/domain/model/chat_data.dart';

class AskAIController extends GetxController {
  List<ChatData> listChat = [
    ChatData(content: "Day la tin nhan de test", isMe: false),
    ChatData(content: "Day la tin nhan de test", isMe: true),
  ];
  bool isLoadingSendChat = false;
  RxString chatContent = "".obs;

  Future<Map> sendChat(String content) async {
    listChat.add(ChatData(content: content, isMe: true));
    isLoadingSendChat = true;
    chatContent.value = "";
    update();

    final res = await APIService.instance.request(
      ApiConstant.sendChat,
      DioMethod.post,
      param: {
        "userId": "hehehe", // <-- thêm userId
        "prompt": "hehehe",
      },
    );

    print("hehehehehehehe" + res.statusCode.toString());
    listChat.add(ChatData(content: res.data["result"], isMe: false));
    isLoadingSendChat = false;
    update();

    return {
      'status': true,
    };
  }
}
