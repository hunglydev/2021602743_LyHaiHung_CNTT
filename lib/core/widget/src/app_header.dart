part of '../widget.dart';

class AppHeader extends StatelessWidget {
  final String titleText;
  final Widget? titleWidget;
  final Color? backgroundColor;
  final bool centerTitle;
  final Widget? leadingWidget;
  final List<Widget>? action;
  final double? leadingWidth;
  const AppHeader({
    super.key,
    this.titleText = '',
    this.titleWidget,
    this.backgroundColor,
    this.centerTitle = false,
    this.leadingWidget,
    this.action,
    this.leadingWidth,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ??
          Text(
            titleText,
            style: boldTextStyle(),
          ),
      backgroundColor: backgroundColor ?? AppColor.whiteBG,
      centerTitle: centerTitle,
      leading: leadingWidget ??
          (context.canPop
              ? IconButton(
                  onPressed: () => finish,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                )
              : const SizedBox.shrink()),
      leadingWidth: leadingWidth ?? 40,
      actions: action,
    );
  }
}
