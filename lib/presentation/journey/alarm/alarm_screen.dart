import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

import '../../../domain/model/alarm_model.dart';
import '../../widget/app_container.dart';
import '../../widget/app_header.dart';
import 'alarm_controller.dart';
import 'widgets/alarm_tile.dart';

class AlarmScreen extends GetView<AlarmController> {
  const AlarmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          AppHeader(
            title: AppLocalization.of(context).alarm,
            leftWidget: SizedBox(width: 40.0.sp),
            titleStyle: const TextStyle(fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: Obx(
              () {
                if (controller.alarmList.isEmpty) {
                  return Padding(
                    padding: EdgeInsets.all(32.0.sp),
                    child: Center(
                      child: Text(
                        AppLocalization.of(context).noAlarm,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.only(
                    top: 12.0.sp,
                    bottom: 60.0.sp,
                  ),
                  itemCount: controller.alarmList.length,
                  itemBuilder: (context, index) {
                    final AlarmModel alarmModel = controller.alarmList[index];
                    return AlarmTile(
                      alarmModel: alarmModel,
                      onDeleteTap: controller.onPressDeleteAlarm,
                      onTap: (alarmModel) => controller.onPressEditAlarm(context, alarmModel),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
