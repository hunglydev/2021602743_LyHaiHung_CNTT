part of '../../feature.dart';

class AddBloodPressurePage extends StatelessWidget {
  final BloodPressureModel? bloodPressureModel;

  const AddBloodPressurePage({
    super.key,
    this.bloodPressureModel,
  });

  void _onAddData() {
    // bloodPressureModel != null ? controller.onSave() : controller.addBloodPressure();
  }

  @override
  Widget build(BuildContext context) {
    // controller.context = context;

    if (bloodPressureModel != null) {
      // controller.onEdit(bloodPressureModel!);
    }

    return AppDialog(
      firstButtonText: bloodPressureModel != null ? AppLocalization.of(context).save : AppLocalization.of(context).add,
      firstButtonCallback: () => _onAddData(),
      secondButtonText: AppLocalization.of(context).cancel,
      secondButtonCallback: () {
        finish(context);
      },
      // coverScreenWidget: Obx(
      //   () => controller.isLoading.value ? const AppLoading() : const SizedBox(),
      // ),
      widgetBody: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              AppButton(
                onPressed: () {},
                backgroundColor: AppColor.lightGray,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                child: Text(
                  ' controller',
                  style: normalTextStyle(),
                ),
              ),
              const Spacer(),
              AppButton(
                onPressed: () {},
                backgroundColor: AppColor.lightGray,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                child: Text(
                  'controller.sƯ',
                  style: normalTextStyle(),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: ScrollBloodPressureValueWidget(
                    title: AppLocalization.of(context).systolic,
                    childCount: 281,
                    initItem: 20,
                    onSelectedItemChanged: (p0) {},
                    itemBuilder: (ctx, value) {
                      return Center(
                        child: Text(
                          '${value + 20}',
                          style: const TextStyle(
                            color: Color(0xffcccccc),
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700,
                            height: 5 / 4,
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ScrollBloodPressureValueWidget(
                    title: AppLocalization.of(context).diastolic,
                    childCount: 281,
                    initItem: 20,
                    onSelectedItemChanged: (p0) {},
                    itemBuilder: (ctx, value) {
                      return Center(
                        child: Text(
                          '${value + 20}',
                          style: const TextStyle(
                            color: Color(0xffcccccc),
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700,
                            height: 5 / 4,
                          ),
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ScrollBloodPressureValueWidget(
                    title: AppLocalization.of(context).pulse,
                    initItem: 20,
                    childCount: 181,
                    onSelectedItemChanged: (p0) {},
                    itemBuilder: (ctx, value) {
                      return Center(
                        child: Text(
                          '${value + 20}',
                          style: const TextStyle(
                            color: Color(0xffcccccc),
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700,
                            height: 5 / 4,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color(0xffcccccc),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                ' controller.',
                style: boldTextStyle(color: AppColor.white),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          AppButton(
            onPressed: () {},
            width: context.screenWidth,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColor.lightGray,
              borderRadius: BorderRadius.circular(9.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: FittedBox(
                      child: Text(
                    ' controller.bl',
                    style: subTextColor(),
                    textAlign: TextAlign.center,
                  )),
                ),
                const SizedBox(width: 4.0),
                const Icon(
                  Icons.info_outline,
                  size: 18.0,
                  color: AppColor.black,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Flexible(
            child: Text(
              'controllge',
              style: subTextColor(
                color: AppColor.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: BloodPressureType.values
                .map(
                  (e) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // controller.bloodPressureType.value == e
                          false
                              ? const CachedImageWidget(
                                  url: AppImage.icDown,
                                  width: 20.0,
                                  height: 12,
                                  // color: controller.bloodPressureType.value.color,
                                )
                              : const SizedBox(
                                  height: 12,
                                ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 12,
                            decoration: BoxDecoration(
                              color: e.color,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
