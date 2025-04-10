part of '../feature.dart';


class SystolicDiastolicWidget extends StatelessWidget {
  final int systolicMin;
  final int systolicMax;
  final int diastolicMin;
  final int diastolicMax;

  const SystolicDiastolicWidget({
    super.key,
    required this.systolicMin,
    required this.systolicMax,
    required this.diastolicMin,
    required this.diastolicMax,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ItemWidget(
            title: AppLocalization.of(context).systolic,
            min: systolicMin,
            max: systolicMax,
          ),
          _ItemWidget(
            title: AppLocalization.of(context).diastolic,
            min: diastolicMin,
            max: diastolicMax,
          ),
        ],
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final String title;
  final int min;
  final int max;

  const _ItemWidget({
    required this.title,
    required this.min,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            title,
            style: boldTextStyle()
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    AppLocalization.of(context).min,
                    style: primaryTextStyle(),
                  ),
                ),
                Text(
                  '$min',
                  style:  primaryTextStyle(),
                )
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    AppLocalization.of(context).max,
                    style: primaryTextStyle(),
                  ),
                ),
                Text(
                  '$max',
                  style: primaryTextStyle(),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
