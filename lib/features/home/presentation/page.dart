part of '../../feature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          AppHeader(
            centerTitle: true,
            titleText: AppLocalization.of(context).bloodHealth.toUpperCase(),
          ),
          Expanded(
            child: ScrollConfiguration(
              behavior: const DisableGlowBehavior(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      width: context.screenWidth,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFFC8D8D),
                            Color(0xFFC53535),
                          ],
                          begin: Alignment(-1.0, -4.0),
                          end: Alignment(1.0, 4.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: context.screenWidth * 0.05,
                                right: context.screenWidth * 0.05,
                              ),
                              child: Stack(
                                children: [
                                  LottieBuilder.asset(AppImage.heartScan),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: LottieBuilder.asset(
                                      AppImage.heartRate,
                                      width: 80.0,
                                      height: 70.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalization.of(context).heartRate,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Text(
                                  AppLocalization.of(context).descriptionHeartRate,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                AppButton(
                                  backgroundColor: AppColor.white,
                                  height: 48,
                                  child: Text(
                                    AppLocalization.of(context).heartRateButton,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFC73838),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: AppTouchable.common(
                            backgroundColor: const Color(0xFF97C7FF),
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CachedImageWidget(
                                  url: AppImage.bloodPressure,
                                  height: 60,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  AppLocalization.of(context).bloodPressure,
                                  style: boldTextStyle(
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: AppTouchable.common(
                            backgroundColor: const Color(0xFF6DB80D),
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CachedImageWidget(
                                  url: AppImage.weightBmi,
                                  height: 60.0,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  AppLocalization.of(context).weightAndBMI,
                                  style: boldTextStyle(
                                    color: AppColor.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: AppTouchable.common(
                            backgroundColor: const Color(0xFFC9CDCE),
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CachedImageWidget(
                                  url: AppImage.icPedometer,
                                  height: 60.0,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  AppLocalization.of(context).pedometer,
                                  style: boldTextStyle(
                                    color: AppColor.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: AppTouchable.common(
                            backgroundColor: const Color(0xFFFFEFC6),
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CachedImageWidget(
                                  url: AppImage.icQrCode,
                                  height: 60.0,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  AppLocalization.of(context).foodScanner,
                                  style: boldTextStyle(
                                    color: AppColor.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
