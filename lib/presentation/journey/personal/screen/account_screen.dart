import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_controller.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';
import 'package:hunglydev_datn/presentation/widget/app_text_fields.dart';
import 'package:intl/intl.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDayController = TextEditingController();
  DateTime? birthDay;
  int gender = 0;

  @override
  void initState() {
    final personalController = Get.find<PersonalController>(
      tag: 'personal',
    );
    nameController.text =
        !isEmpty(personalController.currentUserModel) ? personalController.currentUserModel!.name : "";
    birthDay =
        !isEmpty(personalController.currentUserModel) ? personalController.currentUserModel!.birthDay : DateTime.now();
    birthDayController.text = DateFormat('dd/MM/yyyy').format(birthDay ?? DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        children: [
          AppHeader(
            leftWidget: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
                color: Colors.black,
              ),
            ),
            title: AppLocalization.of(context).account,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.height,
                AppTextField(
                  controller: nameController,
                  textFieldType: TextFieldType.name,
                  title: AppLocalization.of(context).fullName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                24.height,
                AppTextField(
                  controller: birthDayController,
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                      context: context,
                      builder: (context) {
                        return CupertinoDatePicker(
                          initialDateTime: birthDay,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (value) {
                            birthDay = value;
                            birthDayController.text = DateFormat('dd/MM/yyyy').format(value);
                            setState(() {});
                          },
                        );
                      },
                    );
                  },
                  title: AppLocalization.of(context).birthDay,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  suffix: const Icon(
                    Icons.calendar_month_outlined,
                  ),
                ),
                24.height,
                Row(
                  children: [
                    Text(AppLocalization.of(context).gender),
                    12.width,
                    Radio(
                      value: 0,
                      groupValue: gender,
                      onChanged: (value) {
                        gender = value!;
                        setState(() {});
                      },
                    ),
                    Text(AppLocalization.of(context).male),
                    Radio(
                      value: 1,
                      groupValue: gender,
                      onChanged: (value) {
                        gender = value!;
                        setState(() {});
                      },
                    ),
                    Text(AppLocalization.of(context).female),
                  ],
                ),
              ],
            ).paddingSymmetric(horizontal: 20),
          ),
          GetBuilder<PersonalController>(
            tag: 'personal',
            builder: (controller) {
              return AppButton(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                height: 48,
                color: AppColor.primaryColor,
                onPressed: () async {
                  controller.saveUser(nameController.text, birthDay!, gender);
                },
                text: AppLocalization.of(context).save,
                textColor: Colors.white,
              );
            },
          ),
          20.height,
        ],
      ),
    );
  }
}
