import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/app_image.dart';
import 'package:hunglydev_datn/common/util/extensions/int_extension.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/journey/auth/auth_controller.dart';
import 'package:hunglydev_datn/presentation/journey/auth/register.dart';
import 'package:hunglydev_datn/presentation/theme/app_color.dart';
import 'package:hunglydev_datn/presentation/widget/app_button.dart';
import 'package:hunglydev_datn/presentation/widget/app_container.dart';
import 'package:hunglydev_datn/presentation/widget/app_loading.dart';
import 'package:hunglydev_datn/presentation/widget/app_text_fields.dart';
import 'package:hunglydev_datn/presentation/widget/cache_image_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return AppContainer(
          coverScreenWidget: Obx(
            () => controller.loadingState.value.isLoading ? const AppLoading() : const SizedBox.shrink(),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              120.height,
              Column(
                children: [
                  const CachedImageWidget(
                    url: AppImage.logo,
                    height: 60,
                  ),
                  16.height,
                  Text(
                    AppLocalization.of(context).login,
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
                  )
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
                obscureText: true,
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
              20.height,
              AppButton(
                width: Get.width,
                height: 46,
                onPressed: !controller.checkValidateLogin(emailController.text, passwordController.text)
                    ? null
                    : () {
                        controller.login(emailController.text, passwordController.text);
                      },
                text: AppLocalization.of(context).login,
                textColor: Colors.white,
                color: AppColor.primaryColor,
              ),
              4.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppLocalization.of(context).youDoNotHaveAccount),
                  TextButton(
                      onPressed: () {
                        Get.to(const RegisterScreen());
                      },
                      child: Text(AppLocalization.of(context).register))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
