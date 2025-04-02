part of '../widget.dart';

class BackWidget extends StatelessWidget {
  final Widget? iconBack;
  final Color? color;

  const BackWidget({
    super.key,
    this.iconBack,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      width: 32,
      height: 32,
      onPressed: () {},
      padding: const EdgeInsets.all(8),
      child: const Icon(
        Icons.arrow_back_ios_new,
      ),
    );
  }
}
