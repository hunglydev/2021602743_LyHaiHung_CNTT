import 'package:flutter/material.dart';

extension FloatExtensions on double {
  /// Leaves given height of space
  Widget get height => SizedBox(height: this);

  /// Leaves given width of space
  Widget get width => SizedBox(width: this);
}