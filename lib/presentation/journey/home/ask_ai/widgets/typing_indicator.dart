import 'package:flutter/material.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';

class TypingIndicator extends StatefulWidget {
  final EdgeInsets? padding;
  final double dotSize;
  final double dotSpacing;
  final Color? color;
  final Duration duration;

  const TypingIndicator({
    super.key,
    this.dotSize = 4.0,
    this.dotSpacing = 4.0,
    this.color,
    this.duration = const Duration(milliseconds: 500),
    this.padding,
  });

  @override
  State<StatefulWidget> createState() {
    return _TypingIndicatorState();
  }
}

class _TypingIndicatorState extends State<TypingIndicator> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animations = List.generate(
      3,
      (index) {
        final start = index * 0.2;
        final end = start + 0.6;

        return Tween<double>(begin: 0.0, end: -10.0).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(start, end, curve: Curves.easeInOut),
          ),
        );
      },
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        3,
        (index) {
          return AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                padding: widget.padding ?? EdgeInsets.zero,
                margin: EdgeInsets.symmetric(horizontal: widget.dotSpacing / 2),
                width: widget.dotSize,
                height: widget.dotSize,
                decoration: BoxDecoration(
                  color: widget.color ?? AppColor.text,
                  shape: BoxShape.circle,
                ),
                transform: Matrix4.translationValues(
                  0,
                  _animations[index].value,
                  0,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
