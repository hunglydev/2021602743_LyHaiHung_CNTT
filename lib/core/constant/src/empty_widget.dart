part of '../constant.dart';

class EmptyWidget extends StatelessWidget {
  final String imagePath;
  final double imageHeight;
  final String message;

  const EmptyWidget({
    super.key,
    required this.imagePath,
    required this.message,
    required this.imageHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CachedImageWidget(
          url: imagePath,
          height: imageHeight,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            message,
            style: boldTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
