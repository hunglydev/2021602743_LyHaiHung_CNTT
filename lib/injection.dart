import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hunglydev_datn/config/hive_config/hive_config.dart';
import 'package:hunglydev_datn/features/blood_pressure/data/datasource/local_data_source.dart';
import 'package:hunglydev_datn/features/blood_pressure/data/datasource/local_data_source_impl.dart';
import 'package:hunglydev_datn/features/blood_pressure/data/repositories/local_repository_impl.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/local_repository.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  await Hive.initFlutter();
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton<HiveInterface>(() => HiveInterface());
  // Blocs

  // Use cases
  sl.registerLazySingleton(() => FilterBloodPressuresByDateUseCase(sl()));

  //data_source
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl(HiveConfig(), sharedPreferences));

  // Repository
  sl.registerLazySingleton<LocalRepository>(
    () => LocalRepositoryImplement(sl<LocalDataSource>()),
  );
  // External
}
