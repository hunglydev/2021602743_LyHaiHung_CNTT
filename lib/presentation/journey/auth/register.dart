import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/common/mixin/alarm_dialog_mixin.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/auth/auth_controller.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_loading.dart';
import 'package:hunglydev_datn/presentation/widget/app_text_fields.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDayController = TextEditingController();
  DateTime? birthDay;
  int gender = 0;
  bool termAndService = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    birthDayController.dispose();
    emailController.dispose();
    confirmPasswordController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) {
        return AppContainer(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          coverScreenWidget: Obx(
            () => controller.loadingState.value.isLoading ? const AppLoading() : const SizedBox.shrink(),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                60.height,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CachedImageWidget(
                      url: AppImage.logo,
                      height: 60,
                    ),
                    16.height,
                    Text(
                      AppLocalization.of(context).register,
                      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
                    )
                  ],
                ),
                8.height,
                AppTextField(
                  controller: nameController,
                  textFieldType: TextFieldType.name,
                  title: AppLocalization.of(context).fullName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (p0) {
                    nameController.text = p0;
                    controller.update();
                  },
                ),
                8.height,
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
                8.height,
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
                AppTextField(
                  controller: emailController,
                  textFieldType: TextFieldType.email,
                  title: AppLocalization.of(context).email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (p0) {
                    emailController.text = p0;
                    controller.update();
                  },
                ),
                8.height,
                AppTextField(
                  controller: passwordController,
                  textFieldType: TextFieldType.password,
                  title: AppLocalization.of(context).password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (p0) {
                    passwordController.text = p0;
                    controller.update();
                  },
                ),
                8.height,
                AppTextField(
                  controller: confirmPasswordController,
                  textFieldType: TextFieldType.password,
                  title: AppLocalization.of(context).confirmPassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onChanged: (p0) {
                    confirmPasswordController.text = p0;
                    controller.update();
                  },
                ),
                12.height,
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        activeColor: AppColor.primaryColor,
                        value: termAndService,
                        onChanged: (value) {
                          termAndService = value!;
                          controller.update();
                        },
                      ),
                    ),
                    4.width,
                    Text(AppLocalization.of(context).termAndService)
                  ],
                ),
                20.height,
                AppButton(
                  width: Get.width,
                  height: 46,
                  onPressed: !controller.checkValidRegister(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          confirmPassword: confirmPasswordController.text,
                          birthDay: birthDay ?? DateTime.now(),
                          termAndUser: termAndService)
                      ? null
                      : () {
                          controller.register(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                            confirmPassword: confirmPasswordController.text,
                            birthDay: birthDay ?? DateTime.now(),
                            gender: gender,
                          );
                        },
                  text: AppLocalization.of(context).login,
                  textColor: Colors.white,
                  color: AppColor.primaryColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppLocalization.of(context).youHaveAccount),
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(AppLocalization.of(context).login))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
