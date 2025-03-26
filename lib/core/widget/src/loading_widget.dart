part of '../widget.dart';

class LoadingFullScreen extends StatelessWidget {
  const LoadingFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black12.withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(
                AppBorderRadius.r16,
              ),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: AppPadding.large,
              horizontal: 100,
            ),
            child: Column(
              children: [
                const SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: CircularProgressIndicator(
                      color: AppColor.textColor,
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppPadding.small,
                ),
                Text(
                  AppLocalization.of(context).loading,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
