part of '../widget.dart';

class AlarmAddDataButton extends StatelessWidget {
  final Function() onSetAlarm;
  final Function() onAddData;

  const AlarmAddDataButton({
    super.key,
    required this.onSetAlarm,
    required this.onAddData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTouchable.common(
            onPressed: () {
              onSetAlarm.call();
            },
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            backgroundColor: AppColor.gold,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CachedImageWidget(
                  url: AppImage.icAlarm,
                  width: 32.0,
                  height: 32.0,
                  color: AppColor.black,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  AppLocalization.of(context).setAlarm,
                  style: boldTextStyle(),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: AppButton(
            onPressed: onAddData,
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
            ),
            backgroundColor: AppColor.primaryColor,
            child: Text(
              '+ ${AppLocalization.of(context).addData}',
              style: boldTextStyle(color: AppColor.white),
            ),
          ),
        ),
      ],
    );
  }
}
