import 'package:get/get.dart';
import 'package:hunglydev_datn/common/injector/app_di.dart';
import 'package:hunglydev_datn/common/util/app_util.dart';
import 'package:hunglydev_datn/data/local_repository.dart';
import 'package:hunglydev_datn/domain/enum/loading_state.dart';
import 'package:hunglydev_datn/domain/model/user_model.dart';

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

  void saveUser(String name, DateTime birthDay, int gender) async {
    loadingState.value = LoadingState.loading;
    UserModel userModel = UserModel(
        id: !isEmpty(currentUserModel) ? currentUserModel!.id : 0,
        gender: gender,
        name: name,
        birthDay: birthDay,
        age: calculateAge(birthDay));
    await Future.delayed(Duration(seconds: 2));
    await _localRepository.saveUser(userModel);
    currentUserModel = userModel;
    loadingState.value = LoadingState.finish;

    update();
  }
}
