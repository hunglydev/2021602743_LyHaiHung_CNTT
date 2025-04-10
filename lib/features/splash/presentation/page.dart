part of 'feature.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Future.delayed(
          const Duration(seconds: 3),
          () => context.go(AppRoute.homePage),
        );
      },
    );
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedImageWidget(
              url: AppImage.logo,
              width: context.screenWidth * 0.25,
              height: context.screenHeight * 0.25,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            AppLocalization.of(context).bloodPressure,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(height: 12.0),
          const CircularProgressIndicator(
            color: AppColor.secondaryColor,
          ),
        ],
      ),
    );
  }
}
