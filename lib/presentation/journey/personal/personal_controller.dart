import 'package:get/get.dart';
import 'package:hunglydev_datn/common/constants/api_constant.dart';
import 'package:hunglydev_datn/common/constants/app_route.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/network/api_service.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/data/local_repository.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/domain/model/user_model.dart';
import 'package:hunglydev_datn/generated/l10n.dart';

class PersonalController extends GetxController {
  UserModel? currentUserModel;
  Rx<LoadingState> loadingState = LoadingState.pure.obs;
  final _localRepository = getIt.get<LocalRepository>();

  @override
  void onInit() {
    currentUserModel = _localRepository.getUser();
    super.onInit();
  }

  int calculateAge(DateTime birthDate) {
    final today = DateTime.now();
    int age = today.year - birthDate.year;

    if (today.month < birthDate.month || (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }

  void saveUser(String name, DateTime birthDay, int gender, {bool isRegister = false}) async {
    loadingState.value = LoadingState.loading;
    UserModel userModel = UserModel(gender: gender, name: name, birthDay: birthDay, age: calculateAge(birthDay));
    try {
      final res = await APIService.instance.request(
        ApiConstant.saveUser,
        DioMethod.post,
        param: userModel.toJson(),
      );
      if (res.data['status'] == 'success') {
        final UserModel userResponse = UserModel.fromJson(res.data['user']);
        await _localRepository.saveUser(userResponse);
        currentUserModel = userResponse;
      } else {
        showToast(AppLocalization.current.someThingWentWrong);
      }
    } catch (e) {}
    loadingState.value = LoadingState.finish;

    update();
    // if (isRegister) {
    //   Get.offAndToNamed(AppRoute.mainScreen);
    // }
  }
}
