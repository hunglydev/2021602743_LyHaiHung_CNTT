import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  bool get canPop {
    return Navigator.of(this).canPop();
  }

  double get screenWidth => MediaQuery.of(this).size.width;

  double get screenHeight => MediaQuery.of(this).size.height;

  double get paddingTop => MediaQuery.of(this).padding.top;
}
