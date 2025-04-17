import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/local_repository.dart';

class SaveBloodPressure {
  final LocalRepository repository;

  SaveBloodPressure(this.repository);

  Future<void> call(BloodPressureEntity bloodPressure) {
    return repository.saveBloodPressure(bloodPressure);
  }
}

class DeleteBloodPressure {
  final LocalRepository repository;

  DeleteBloodPressure(this.repository);

  Future<void> call(String key) {
    return repository.deleteBloodPressure(key);
  }
}

class GetBloodPressures {
  final LocalRepository repository;

  GetBloodPressures(this.repository);

  List<BloodPressureEntity> call() {
    return repository.getAllBloodPressures();
  }
}

class FilterBloodPressuresByDateUseCase {
  final LocalRepository repository;

  FilterBloodPressuresByDateUseCase(this.repository);

  List<BloodPressureEntity> call(int start, int end) {
    return repository.filterBloodPressureDate(start, end);
  }
}
