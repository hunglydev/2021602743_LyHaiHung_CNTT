import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hunglydev_datn/enums/src/loading_state.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/usecase.dart';

part 'blood_pressure_event.dart';
part 'blood_pressure_state.dart';

class BloodPressureBloc extends Bloc<BloodPressureEvent, BloodPressureState> {
  BloodPressureBloc() : super(const BloodPressureState()) {
    on<BloodPressureEvent>((event, emit) {});
    on<FilterBloodPressure>(_onFilterBloodPressure);
  }

  void _onFilterBloodPressure(FilterBloodPressure event, Emitter<BloodPressureState> emit) {
    List<Map<String, dynamic>>? bloodPressureChartData = List.from(state.bloodPressureChartData ?? []);
    bloodPressureChartData.clear();
    final FilterBloodPressuresByDateUseCase filterUseCase;

    // final result = filterUseCase();
  }
}
