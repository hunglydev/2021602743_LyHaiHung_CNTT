part of '../../feature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          AppHeader(
            titleText: TranslationConstants.bloodHealth,
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
                                  TranslationConstants.heartRate,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Text(
                                  TranslationConstants.descriptionHeartRate,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.white,
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                                // AppTouchable.common(
                                //   onPressed: controller.onPressHeartBeat,
                                //   decoration: BoxDecoration(
                                //     gradient: const LinearGradient(
                                //       colors: [
                                //         Color(0xFFFFFFFF),
                                //         Color(0xFFD9D9D9),
                                //       ],
                                //       begin: Alignment.topCenter,
                                //       end: Alignment.bottomCenter,
                                //     ),
                                //     borderRadius: const BorderRadius.all(
                                //       Radius.circular(10),
                                //     ),
                                //     boxShadow: [
                                //       BoxShadow(
                                //         color: const Color(0xFF000000).withOpacity(0.4),
                                //         offset: const Offset(0, 0),
                                //         blurRadius: 10,
                                //       ),
                                //     ],
                                //   ),
                                //   child: Padding(
                                //     padding: const EdgeInsets.symmetric(
                                //       vertical: 12.0,
                                //       horizontal: 30.0,
                                //     ),
                                //     child: Text(
                                //       TranslationConstants.heartRateButton,
                                //       style: const TextStyle(
                                //         fontSize: 16.0,
                                //         fontWeight: FontWeight.w600,
                                //         color: Color(0xFFC73838),
                                //       ),
                                //     ),
                                //   ),
                                // )
                              ],
                            ),
                          ),
                          const SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: AppTouchable.common(
                    //         backgroundColor: const Color(0xFF97C7FF),
                    //         onPressed: controller.onPressBloodPressure,
                    //         padding: const EdgeInsets.symmetric(vertical: 20.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             AppImageWidget.asset(
                    //               path: AppImage.bloodPressure,
                    //               width: 60.0,
                    //             ),
                    //             const SizedBox(height: 4.0),
                    //             Text(
                    //               TranslationConstants.bloodPressure,
                    //               style: textStyle18500().copyWith(
                    //                 color: AppColor.white,
                    //                 fontSize: 16.0,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(width: 16.0),
                    //     Expanded(
                    //       child: AppTouchable.common(
                    //         backgroundColor: const Color(0xFF6DB80D),
                    //         onPressed: controller.onPressWeightAndBMI,
                    //         padding: const EdgeInsets.symmetric(vertical: 20.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             AppImageWidget.asset(
                    //               path: AppImage.weightBmi,
                    //               width: 60.0,
                    //             ),
                    //             const SizedBox(height: 4.0),
                    //             Text(
                    //               TranslationConstants.weightAndBMI,
                    //               style: textStyle18500().copyWith(
                    //                 color: AppColor.white,
                    //                 fontSize: 16.0,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(height: 16.0),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: AppTouchable.common(
                    //         backgroundColor: const Color(0xFFC9CDCE),
                    //         onPressed: controller.onPressPedometer,
                    //         padding: const EdgeInsets.symmetric(vertical: 20.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             AppImageWidget.asset(
                    //               path: AppImage.icPedometer,
                    //               width: 60.0,
                    //             ),
                    //             const SizedBox(height: 4.0),
                    //             Text(
                    //               "Pedometer",
                    //               style: textStyle18500().copyWith(
                    //                 color: AppColor.white,
                    //                 fontSize: 16.0,
                    //               ),
                    //               textAlign: TextAlign.center,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(width: 16.0),
                    //     Expanded(
                    //       child: AppTouchable.common(
                    //         backgroundColor: const Color(0xFFFFEFC6),
                    //         onPressed: controller.onPressFoodScanner,
                    //         padding: const EdgeInsets.symmetric(vertical: 20.0),
                    //         child: Column(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             AppImageWidget.asset(
                    //               path: AppImage.ic_qr_code,
                    //               width: 60.0,
                    //             ),
                    //             const SizedBox(height: 4.0),
                    //             Text(
                    //               TranslationConstants.foodScanner,
                    //               style: textStyle18500().copyWith(
                    //                 color: AppColor.grayText,
                    //                 fontSize: 16.0,
                    //               ),
                    //               textAlign: TextAlign.center,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
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
