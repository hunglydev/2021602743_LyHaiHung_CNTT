import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/domain/model/chat_data.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatItem extends StatefulWidget {
  final Locale locale;
  final bool hasAnimated;
  final VoidCallback onAnimated;
  final ChatData chatData;

  const ChatItem({
    super.key,
    required this.chatData,
    required this.hasAnimated,
    required this.onAnimated,
    required this.locale,
  });

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  final TextEditingController _contentController = TextEditingController();
  bool isShowMarkDown = false;
  @override
  void initState() {
    super.initState();
    _contentController.text = widget.chatData.content;
  }

  bool _isValidUrl(String url) {
    const urlPattern = r'^(https?|ftp)://[^\s/$.?#].[^\s]*$';
    final regex = RegExp(urlPattern);
    return regex.hasMatch(url);
  }

  List<Widget> _chatComponents() {
    return [
      widget.chatData.isMe
          ? const SizedBox.shrink()
          : Container(
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
      12.width,
      Flexible(
        child: Column(
          crossAxisAlignment: widget.chatData.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            _isValidUrl(widget.chatData.content)
                ? CachedImageWidget(
                    url: widget.chatData.content,
                    height: 200,
                    fit: BoxFit.cover,
                    radius: 12,
                    child: const SizedBox(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  )
                : Column(
                    crossAxisAlignment: widget.chatData.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: widget.chatData.isMe ? const Color(0xff7ceaf5) : AppColor.lightGray,
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        padding: const EdgeInsets.all(
                          12,
                        ),
                        child:
                            // widget.hasAnimated || isShowMarkDown
                            true
                                ? MarkdownBody(data: widget.chatData.content)
                                : AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    totalRepeatCount: 1,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        widget.chatData.content,
                                        textStyle: const TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.black87,
                                        ),
                                        speed: const Duration(milliseconds: 5),
                                      ),
                                    ],
                                    onFinished: () {
                                      widget.onAnimated(); // 👈 Lưu trạng thái đã animate

                                      setState(() {
                                        isShowMarkDown = true;
                                      });
                                    },
                                  ),
                      ),
                      Text(timeago.format(widget.chatData.createdAt ?? DateTime.now(),
                          locale: widget.locale.languageCode))
                    ],
                  ),
            8.height,
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: widget.chatData.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.chatData.isMe
              ? _chatComponents()
                  .reversed
                  .map(
                    (e) => e,
                  )
                  .toList()
              : _chatComponents(),
        ),
        16.height,
      ],
    );
  }
}
