import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_color.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    this.appBar,
    this.bottomNavigationBar,
    this.child,
    this.backgroundColor,
    this.coverScreenWidget,
    this.resizeToAvoidBottomInset = true,
    this.floatingActionButton,
    this.alignLayer,
    this.padding,
  });
  final EdgeInsets? padding;
  final AlignmentDirectional? alignLayer;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? child;
  final Color? backgroundColor;
  final Widget? coverScreenWidget;
  final bool? resizeToAvoidBottomInset;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignLayer ?? AlignmentDirectional.topStart,
      children: [
        GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Scaffold(
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            backgroundColor: backgroundColor ?? AppColor.white,
            appBar: appBar,
            body: Container(
              padding: padding,
              width: Get.width,
              height: Get.height,
              child: child ?? const SizedBox.shrink(),
            ),
            floatingActionButton: floatingActionButton,
            bottomNavigationBar: bottomNavigationBar,
          ),
        ),
        coverScreenWidget ?? const SizedBox.shrink(),
      ],
    );
  }
}
