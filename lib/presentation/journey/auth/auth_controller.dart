import 'package:get/get.dart';
import 'package:hunglydev_datn/common/config/hive_config/hive_config.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/constants/app_route.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/common/util/share_preference_utils.dart';
import 'package:hunglydev_datn/common/util/show_snack_bar.dart';
import 'package:hunglydev_datn/data/local_repository.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/domain/model/user_model.dart';
import 'package:hunglydev_datn/generated/l10n.dart';
import 'package:hunglydev_datn/presentation/controller/app_controller.dart';

class AuthController extends GetxController {
  final _localRepository = getIt.get<LocalRepository>();

  Rx<LoadingState> loadingState = LoadingState.pure.obs;

  bool checkValidateLogin(String email, String password) {
    if (isEmpty(email) || isEmpty(password)) {
      return false;
    }
    return true;
  }

  void login(String email, String password) async {
    loadingState.value = LoadingState.loading;
    final tokenFCM = getIt<SharePreferenceUtils>().getString('fcm_token');
    try {
      final res = await APIService.instance.request(
        ApiConstant.login,
        DioMethod.post,
        param: {
          'email': email,
          'password': password,
          'fcmToken': tokenFCM,
        },
      );

      if (res.data['status'] == 'success') {
        loadingState.value = LoadingState.finish;
        UserModel user = UserModel.fromJson(res.data['user']);
        final hiveConfig = getIt<HiveConfig>();
        hiveConfig.initLater(user.id);
        _localRepository.saveUser(user);

        if (Get.isRegistered<AppController>()) {
          Get.find<AppController>().updateUser(user);
        }
        Get.offAndToNamed(AppRoute.mainScreen);
      } else {
        loadingState.value = LoadingState.error;
        showSnackBar(Get.context!, type: SnackBarType.error);
      }
    } catch (e) {
      showSnackBar(Get.context!, type: SnackBarType.error, title: e.toString());
    }
    loadingState.value = LoadingState.finish;
  }

  bool checkValidRegister(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword,
      required DateTime birthDay,
      required bool termAndUser}) {
    if (isEmpty(email) ||
        isEmpty(password) ||
        isEmpty(password) ||
        isEmpty(confirmPassword) ||
        isEmpty(birthDay) ||
        isEmpty(termAndUser)) {
      return false;
    }
    return true;
  }

  void register(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword,
      required DateTime birthDay,
      required int gender}) async {
    if (password != confirmPassword) {
      showSnackBar(Get.context!, type: SnackBarType.error, title: AppLocalization.current.passwordNotMatch);
    } else {
      loadingState.value = LoadingState.loading;

      try {
        final res = await APIService.instance.request(
          ApiConstant.register,
          DioMethod.post,
          param: {
            'name': name,
            'email': email,
            'password': password,
            'birthDay': birthDay.toString(),
            'gender': gender,
          },
        );

        if (res.data['status'] == 'success') {
          loadingState.value = LoadingState.finish;
          showSnackBar(Get.context!);

          Get.back();
        } else {
          loadingState.value = LoadingState.error;
          showSnackBar(Get.context!, type: SnackBarType.error);
        }
      } catch (e) {
        print('-------login: ${e.toString()}');
      }
      loadingState.value = LoadingState.finish;
    }
  }
}
