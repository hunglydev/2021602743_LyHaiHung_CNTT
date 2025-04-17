part of 'feature.dart';

class BloodPressurePage extends StatelessWidget {
  const BloodPressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    void onAddData() async {
      final result = await showAppDialog(
        context,
        "",
        "",
        builder: (ctx) => const AddBloodPressurePage(),
      );
      print('-------------- result: $result');
      if (result != null && result) {
        // filterBloodPressure();
      }
      // appController.setAllowBloodPressureFirstTime(false);
    }

    return BlocProvider(
      create: (context) => BloodPressureBloc(),
      child: AppScaffold(
        child: Column(
          children: [
            AppHeader(
              titleText: AppLocalization.of(context).bloodPressure,
              centerTitle: true,
              extendWidget: FilterDateWidget(startDate: DateTime.now(), endDate: DateTime.now()),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    BlocBuilder<BloodPressureBloc, BloodPressureState>(
                      builder: (context, state) {
                        return Expanded(
                          child: !isEmpty(state.bloodPressures)
                              ? const SingleChildScrollView(
                                  physics: NeverScrollableScrollPhysics(),
                                  child: BloodPressureDataWidget(),
                                )
                              : EmptyWidget(
                                  imagePath: AppImage.icBloodPressure2,
                                  imageHeight: 168,
                                  message: AppLocalization.of(context).addYourRecordToSeeStatistics,
                                ),
                        );
                      },
                    ),
                    AlarmAddDataButton(
                      onSetAlarm: () {},
                      onAddData: onAddData,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    BlocBuilder<BloodPressureBloc, BloodPressureState>(
                      builder: (context, state) {
                        return !isEmpty(state.bloodPressures)
                            ? Column(
                                children: [
                                  AppButton(
                                    onPressed: () {},
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 16.0,
                                    ),
                                    backgroundColor: AppColor.green,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: false
                                              ? const SizedBox(
                                                  width: 20.0,
                                                  height: 20.0,
                                                  child: Center(
                                                    child: CircularProgressIndicator(
                                                      color: Colors.white,
                                                      strokeCap: StrokeCap.round,
                                                      strokeWidth: 3.0,
                                                    ),
                                                  ),
                                                )
                                              : Text(
                                                  AppLocalization.of(context).export,
                                                  textAlign: TextAlign.center,
                                                  style: boldTextStyle(
                                                    color: AppColor.white,
                                                  ),
                                                ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).padding.bottom + 12,
                                  ),
                                ],
                              )
                            : const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
