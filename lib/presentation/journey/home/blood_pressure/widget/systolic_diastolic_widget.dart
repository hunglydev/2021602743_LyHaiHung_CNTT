import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

import '../../../../theme/app_color.dart';
import '../../../../theme/theme_text.dart';
import '../../../../widget/container_widget.dart';

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
    return ContainerWidget(
      padding: EdgeInsets.symmetric(
        vertical: 10.sp,
        horizontal: 20.sp,
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
            style: textStyle18500().copyWith(
              color: AppColor.black,
            ),
          ),
        ),
        SizedBox(
          height: 4.sp,
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
                    style: textStyle14400().copyWith(color: AppColor.black),
                  ),
                ),
                Text(
                  '$min',
                  style: textStyle24700().copyWith(color: AppColor.black),
                )
              ],
            ),
            SizedBox(
              width: 12.sp,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    AppLocalization.of(context).max,
                    style: textStyle14400().copyWith(color: AppColor.black),
                  ),
                ),
                Text(
                  '$max',
                  style: textStyle24700().copyWith(color: AppColor.black),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
