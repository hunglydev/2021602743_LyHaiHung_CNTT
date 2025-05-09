import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';

class ChatItem extends StatefulWidget {
  final bool isMe;
  final String content;

  const ChatItem({
    super.key,
    required this.isMe,
    required this.content,
  });

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  final TextEditingController _contentController = TextEditingController();
  String _textContent = "";
  bool isShowMarkDown = false;
  @override
  void initState() {
    super.initState();
    _contentController.text = widget.content;
    _textContent = widget.content;
  }

  bool _isValidUrl(String url) {
    const urlPattern = r'^(https?|ftp)://[^\s/$.?#].[^\s]*$';
    final regex = RegExp(urlPattern);
    return regex.hasMatch(url);
  }

  List<Widget> _chatComponents() {
    return [
      widget.isMe
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
          crossAxisAlignment: widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            _isValidUrl(widget.content)
                ? CachedImageWidget(
                    url: widget.content,
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
                : Container(
                    decoration: BoxDecoration(
                      color: widget.isMe ? const Color(0xff7ceaf5) : AppColor.lightGray,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      12,
                    ),
                    child: isShowMarkDown
                        ? MarkdownBody(data: widget.content)
                        : AnimatedTextKit(
                            isRepeatingAnimation: false,
                            totalRepeatCount: 1,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                widget.content,
                                textStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black87,
                                ),
                                speed: const Duration(milliseconds: 5),
                              ),
                            ],
                            onFinished: () {
                              setState(() {
                                isShowMarkDown = true;
                              });
                            },
                          ),
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
          mainAxisAlignment: widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.isMe
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
