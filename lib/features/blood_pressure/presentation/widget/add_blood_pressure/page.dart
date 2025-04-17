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

    return BlocProvider(
      create: (context) => AddBloodPressureBloc(),
      child: BlocBuilder<AddBloodPressureBloc, AddBloodPressureState>(
        builder: (context, state) {
          return AppDialog(
            firstButtonText:
                bloodPressureModel != null ? AppLocalization.of(context).save : AppLocalization.of(context).add,
            firstButtonCallback: () => _onAddData(),
            secondButtonText: AppLocalization.of(context).cancel,
            secondButtonCallback: () {
              finish(context);
            },
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
                        date(state.stringBloodPrDate),
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
                        date(state.stringBloodPrTime, isShowTime: true),
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
                          initItem: state.systolic,
                          onSelectedItemChanged: (p0) {
                            context.read<AddBloodPressureBloc>().add(SelectSysEvent(newSys: p0));
                          },
                          itemBuilder: (ctx, value) {
                            return Center(
                              child: Text(
                                '$value',
                                style: TextStyle(
                                  color: state.bloodPressureType.color,
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
                          initItem: state.diastolic,
                          onSelectedItemChanged: (p0) {
                            context.read<AddBloodPressureBloc>().add(SelectDiastolicEvent(newDiastolic: p0));
                          },
                          itemBuilder: (ctx, value) {
                            return Center(
                              child: Text(
                                '$value',
                                style: TextStyle(
                                  color: state.bloodPressureType.color,
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
                        initItem: state.pulse,
                        childCount: 181,
                        onSelectedItemChanged: (p0) {
                          context.read<AddBloodPressureBloc>().add(SelectPulseEvent(newPulse: p0));
                        },
                        itemBuilder: (ctx, value) {
                          return Center(
                            child: Text(
                              '$value',
                              style: TextStyle(
                                color: state.bloodPressureType.color,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w700,
                                height: 5 / 4,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: state.bloodPressureType.color,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      state.bloodPressureType.name,
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
                          state.bloodPressureType.sortMessageRange,
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
                    state.bloodPressureType.message,
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
                                state.bloodPressureType == e
                                    ? CachedImageWidget(
                                        url: AppImage.icDown,
                                        width: 20.0,
                                        height: 12,
                                        color: state.bloodPressureType.color,
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
        },
      ),
    );
  }
}
