part of '../widget.dart';

showDialogSuccess(
  BuildContext context,
  String titleText,
  String messageText, {
  String secondButtonText = '',
  VoidCallback? secondButtonCallback,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AppDialog(
      title: titleText,
      firstButtonText: AppLocalization.of(context).close,
      secondButtonText: secondButtonText,
      secondButtonCallback: secondButtonCallback,
      widgetBody: Column(
        children: [
          const SizedBox(height: 40.0),
          Text(
            messageText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColor.primaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              fontFamily: 'Roboto',
              height: 24 / 20,
            ),
          ),
          const SizedBox(height: 36.0),
        ],
      ),
    ),
  );
}

Future showAppDialog(
  BuildContext context,
  String titleText,
  String messageText, {
  Widget? messageWidget,
  Widget? widgetBody,
  Widget? widgetTopRight,
  Widget? coverScreenWidget,
  String? firstButtonText,
  VoidCallback? firstButtonCallback,
  String? secondButtonText,
  VoidCallback? secondButtonCallback,
  bool dismissAble = false,
  WidgetBuilder? builder,
  Color? backgroundColor,
  double? heightDialog,
  double? widthDialog,
  bool? hideGroupButton,
  Widget? fullContentWidget,
  EdgeInsetsGeometry? padding,
}) {
  return showDialog(
    context: context,
    barrierDismissible: dismissAble,
    builder: builder ??
        (BuildContext context) => AppDialog(
              title: titleText,
              message: messageText,
              messageWidget: messageWidget,
              widgetBody: widgetBody,
              widgetTopRight: widgetTopRight,
              coverScreenWidget: coverScreenWidget,
              firstButtonCallback: firstButtonCallback,
              secondButtonText: secondButtonText,
              secondButtonCallback: secondButtonCallback,
              backgroundColor: backgroundColor,
              heightDialog: heightDialog,
              widthDialog: widthDialog,
              hideGroupButton: hideGroupButton,
              fullContentWidget: fullContentWidget,
              firstButtonText: firstButtonText ?? AppLocalization.of(context).cancel,
              padding: padding,
            ),
  );
}

class AppDialog extends StatelessWidget {
  final String? title;
  final String? message;
  final Widget? messageWidget;
  final bool dismissAble;
  final Widget? widgetBody;
  final Widget? widgetTopRight;
  final Widget? coverScreenWidget;
  final String firstButtonText;
  final VoidCallback? firstButtonCallback;
  final String? secondButtonText;
  final VoidCallback? secondButtonCallback;
  final Color? backgroundColor;
  final double? heightDialog;
  final double? widthDialog;
  final bool? hideGroupButton;
  final Widget? fullContentWidget;
  final EdgeInsetsGeometry? padding;
  final bool hasScroll;

  const AppDialog({
    super.key,
    this.title,
    this.message,
    this.messageWidget,
    this.dismissAble = false,
    this.widgetBody,
    this.widgetTopRight,
    this.coverScreenWidget,
    required this.firstButtonText,
    this.firstButtonCallback,
    this.secondButtonText,
    this.secondButtonCallback,
    this.backgroundColor,
    this.heightDialog,
    this.widthDialog,
    this.hideGroupButton,
    this.fullContentWidget,
    this.padding,
    this.hasScroll = false,
  });

  Widget _buildGroupButtons(BuildContext context) {
    if ((secondButtonText ?? '').isEmpty) {
      return AppButton(
        width: context.screenWidth,
        onPressed: firstButtonCallback ??
            () {
              finish(context);
            },
        text: firstButtonText,
        backgroundColor: AppColor.primaryColor,
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        radius: 10.0,
        child: Text(firstButtonText, textAlign: TextAlign.center, style: primaryTextStyle(fontSize: 16)),
      );
    }
    return Row(
      children: [
        Expanded(
          child: AppButton(
            onPressed: secondButtonCallback,
            width: context.screenWidth,
            text: secondButtonText,
            backgroundColor: AppColor.red,
            radius: 10.0,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Text(
              secondButtonText ?? '',
              textAlign: TextAlign.center,
              style: normalTextStyle(
                fontSize: 16,
                color: AppColor.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: AppButton(
            width: context.screenWidth,
            onPressed: firstButtonCallback ??
                () {
                  finish(context);
                },
            text: firstButtonText,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            backgroundColor: AppColor.primaryColor,
            radius: 10.0,
            child: Text(
              firstButtonText,
              textAlign: TextAlign.center,
              style: normalTextStyle(
                fontSize: 16,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double dialogWidth = min<double>(width * 0.9, 400);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 0.0,
      backgroundColor: backgroundColor ?? Colors.transparent,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 8.0,
        ),
        physics: !hasScroll ? const NeverScrollableScrollPhysics() : null,
        child: Stack(
          children: [
            fullContentWidget ??
                Container(
                  decoration: BoxDecoration(
                    color: backgroundColor ?? AppColor.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: widthDialog ?? dialogWidth,
                  height: heightDialog,
                  padding: padding ?? const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      (title ?? '').isNotEmpty
                          ? Text(title!, textAlign: TextAlign.center, style: boldTextStyle(fontSize: 20))
                          : const SizedBox.shrink(),
                      (message ?? '').isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                message!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppColor.grayText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : const SizedBox.shrink(),
                      widgetBody ??
                          Column(
                            children: [
                              (message ?? '').isEmpty
                                  ? const SizedBox.shrink()
                                  : Text(
                                      message!,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: AppColor.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                              messageWidget ?? const SizedBox.shrink(),
                            ],
                          ),
                      hideGroupButton == true ? const SizedBox.shrink() : _buildGroupButtons(context),
                    ],
                  ),
                ),
            Positioned.fill(child: coverScreenWidget ?? const SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
