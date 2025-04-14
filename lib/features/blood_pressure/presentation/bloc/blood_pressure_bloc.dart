import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hunglydev_datn/enums/src/loading_state.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';

part 'blood_pressure_event.dart';
part 'blood_pressure_state.dart';

class BloodPressureBloc extends Bloc<BloodPressureEvent, BloodPressureState> {
  BloodPressureBloc() : super(const BloodPressureState()) {
    on<BloodPressureEvent>((event, emit) {});
  }
}
