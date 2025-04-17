part of '../feature.dart';

class BloodPressureDataWidget extends StatelessWidget {
  const BloodPressureDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const SystolicDiastolicWidget(
          systolicMin: 20,
          systolicMax: 100,
          diastolicMin: 20,
          diastolicMax: 100,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(12.0).copyWith(top: 10),
          height: 0.65 * context.screenWidth,
          width: double.maxFinite,
          child: HomeBarChart(
            minDate: DateTime(2025, 01, 01),
            maxDate: DateTime.now().add(const Duration(days: 1)),
            listChartData: const [],
            currentSelected: 0,
            onSelectChartItem: (x, groupIndex) {},
            groupIndexSelected: 0,
            minY: 10,
            maxY: 350,
            horizontalInterval: 50,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: context.screenWidth,
          padding: const EdgeInsets.all(12),
          decoration: commonDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      DateFormat(
                        'MMM dd, yyyy',
                        'vi',
                      ).format(
                        DateTime.fromMillisecondsSinceEpoch(0),
                      ),
                      style: primaryTextStyle()),
                  Text(
                    DateFormat('hh:mm a', 'vi').format(
                      DateTime.fromMillisecondsSinceEpoch(0),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('', style: boldTextStyle()),
                  Text('', style: boldTextStyle()),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      // color: controller.bloodPressSelected.value.bloodType.color,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text('', style: boldTextStyle()),
                  ),
                  AppTouchable(
                    width: 40.0,
                    height: 40.0,
                    onPressed: () {},
                    child: const CachedImageWidget(
                      url: AppImage.icDel,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
