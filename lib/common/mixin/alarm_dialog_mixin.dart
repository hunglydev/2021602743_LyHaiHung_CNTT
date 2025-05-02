import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/extensions/string_extension.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

import '../../domain/enum/alarm_type.dart';
import '../../domain/model/alarm_model.dart';
import '../../presentation/journey/alarm/widgets/alarm_dialog.dart';
import '../../presentation/theme/app_color.dart';
import '../../presentation/theme/theme_text.dart';
import '../../presentation/widget/app_button.dart';
import '../../presentation/widget/app_dialog.dart';

mixin AlarmDialogMixin {
  RxList<bool> selectedWeekDays = List<bool>.generate(7, (_) => false).obs;
  Rx<DateTime> selectedTime = DateTime.now().obs;

  Future<void> showEditAlarm({
    required BuildContext context,
    required AlarmModel alarmModel,
    void Function()? onPressCancel,
    void Function(AlarmModel)? onPressSave,
  }) async {
    showAppDialog(
      context,
      "%s %s %s".trArgs(
        [
          AppLocalization.of(context).alarm.tr,
          AppLocalization.of(context).forSomething,
          alarmModel.type!.tr,
        ],
      ),
      "",
      hideGroupButton: true,
      widgetBody: AlarmDialog(
        alarmModel: alarmModel,
        onPressCancel: onPressCancel,
        onPressSave: onPressSave,
      ),
    );
  }

  Future<void> showAddAlarm({
    required BuildContext context,
    AlarmModel? alarmModel,
    AlarmType? alarmType = AlarmType.heartRate,
    void Function()? onPressCancel,
    Function(AlarmModel)? onPressSave,
  }) {
    return showAppDialog(
      context,
      "%s %s %s".trArgs(
        [
          AppLocalization.of(context).alarm,
          AppLocalization.of(context).forSomething,
          alarmType?.tr ?? alarmModel?.type?.tr ?? "Unknown",
        ],
      ),
      "",
      hideGroupButton: true,
      widgetBody: AlarmDialog(
        alarmModel: alarmModel,
        alarmType: alarmType,
        onPressSave: onPressSave,
        onPressCancel: onPressCancel,
      ),
    );
  }

  void showConfirmDeleteAlarmDialog(
    BuildContext context, {
    required AlarmModel alarmModel,
    void Function()? onPressCancel,
    void Function(AlarmModel)? onPressConfirm,
  }) async {
    return showAppDialog(
        context,
        "%s %s %s".trArgs(
          [
            AppLocalization.of(context).delete.toCapitalized(),
            AppLocalization.of(context).alarm.toLowerCase(),
            alarmModel.type?.tr ?? "Unknown",
          ],
        ),
        "",
        hideGroupButton: true,
        widgetBody: Column(
          children: [
            SizedBox(
              height: 32.0.sp,
            ),
            Text(
              AppLocalization.of(context).deleteAlarmConfirmMsg,
              style: textStyle20400(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32.0.sp,
            ),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    onPressed: onPressCancel ?? Get.back,
                    height: 60.0.sp,
                    width: Get.width,
                    color: AppColor.red,
                    radius: 10.0.sp,
                    child: Text(
                      AppLocalization.of(context).cancel,
                      textAlign: TextAlign.center,
                      style: textStyle24700(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0.sp),
                Expanded(
                  child: AppButton(
                    height: 60.0.sp,
                    width: Get.width,
                    onPressed: onPressConfirm != null ? () => onPressConfirm(alarmModel) : null,
                    color: AppColor.primaryColor,
                    radius: 10.0.sp,
                    child: Text(
                      AppLocalization.of(context).delete,
                      textAlign: TextAlign.center,
                      style: textStyle24700(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
