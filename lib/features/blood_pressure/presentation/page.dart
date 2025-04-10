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
      if (result != null && result) {
        // filterBloodPressure();
      }
      // appController.setAllowBloodPressureFirstTime(false);
    }

    return AppScaffold(
      child: Column(
        children: [
          AppHeader(
            titleText: AppLocalization.of(context).bloodPressure,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const Expanded(
                      child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: BloodPressureDataWidget(),
                  )),
                  AlarmAddDataButton(
                    onSetAlarm: () {},
                    onAddData: onAddData,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  AppTouchable.common(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
