import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
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
      // widget.isMe
      //     ? ClipRRect(
      //         borderRadius: BorderRadius.circular(100),
      //         child: const CachedImageWidget(
      //           url: AppImages.icPerson,
      //           height: 36,
      //           width: 36,
      //         ),
      //       )
      //     : Container(
      //         width: 36,
      //         height: 36,
      //         alignment: Alignment.center,
      //         decoration: const BoxDecoration(
      //           color: AppColor.hintColor,
      //           shape: BoxShape.circle,
      //         ),
      //         child: const CachedImageWidget(
      //           url: AppImages.icSmartToy,
      //           height: 20,
      //           width: 20,
      //         ),
      //       ),
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
                      color: AppColor.lightGray,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    padding: const EdgeInsets.all(
                      12,
                    ),
                    child: MarkdownBody(data: _textContent),
                  ),
            8.height,
          ],
        ).paddingOnly(
          left: 12,
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
        ).paddingSymmetric(horizontal: 20),
        16.height,
      ],
    );
  }
}
