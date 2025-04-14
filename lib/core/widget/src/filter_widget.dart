part of '../widget.dart';

class FilterWidget extends StatelessWidget {
  final Function()? onPressed;
  final String title;

  const FilterWidget({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      height: 40.0,
      width: context.screenWidth,
      margin: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
      onPressed: onPressed,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x80000000),
            offset: Offset(0, 0),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 40.0,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: boldTextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          const CachedImageWidget(
            url: AppImage.icFilter,
            height: 40,
          ),
        ],
      ),
    );
  }
}
