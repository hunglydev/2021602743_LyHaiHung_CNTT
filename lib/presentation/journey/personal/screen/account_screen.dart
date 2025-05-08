import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/personal/personal_controller.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_header.dart';
import 'package:hunglydev_datn/presentation/widget/app_loading.dart';
import 'package:hunglydev_datn/presentation/widget/app_text_fields.dart';
import 'package:intl/intl.dart';

class AccountScreen extends StatefulWidget {
  final bool isRegister;
  const AccountScreen({
    super.key,
    this.isRegister = false,
  });

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
    if (!widget.isRegister) {
      final personalController = Get.find<PersonalController>(
        tag: 'personal',
      );
      nameController.text =
          !isEmpty(personalController.currentUserModel) ? personalController.currentUserModel!.name : "";
      birthDay = !isEmpty(personalController.currentUserModel)
          ? personalController.currentUserModel!.birthDay
          : DateTime.now();
      birthDayController.text = DateFormat('dd/MM/yyyy').format(birthDay ?? DateTime.now());
      gender = !isEmpty(personalController.currentUserModel) ? personalController.currentUserModel!.gender : 0;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalController>(
      tag: widget.isRegister ? 'register' : 'personal',
      init: widget.isRegister ? PersonalController() : null,
      builder: (controller) {
        return AppContainer(
          coverScreenWidget: Obx(
            () {
              return controller.loadingState.value.isLoading ? const AppLoading() : const SizedBox.shrink();
            },
          ),
          child: Column(
            children: [
              AppHeader(
                leftWidget: Navigator.of(context).canPop()
                    ? IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left_outlined,
                          color: Colors.black,
                        ),
                      )
                    : const SizedBox.shrink(),
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
                                controller.update();
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
                          activeColor: AppColor.primaryColor,
                          value: 0,
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value!;
                            controller.update();
                          },
                        ),
                        Text(AppLocalization.of(context).male),
                        Radio(
                          activeColor: AppColor.primaryColor,
                          value: 1,
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value!;
                            controller.update();
                          },
                        ),
                        Text(AppLocalization.of(context).female),
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: 20),
              ),
              AppButton(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: Get.width,
                height: 48,
                color: AppColor.primaryColor,
                onPressed: () async {
                  controller.saveUser(nameController.text, birthDay!, gender, isRegister: widget.isRegister);
                },
                text: AppLocalization.of(context).save,
                textColor: Colors.white,
              ),
              20.height,
            ],
          ),
        );
      },
    );
  }
}
