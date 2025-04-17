import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hunglydev_datn/enums/enum.dart';
import 'package:hunglydev_datn/enums/src/loading_state.dart';
import 'package:hunglydev_datn/features/blood_pressure/domain/entity.dart';

part 'add_blood_pressure_event.dart';
part 'add_blood_pressure_state.dart';

class AddBloodPressureBloc extends Bloc<AddBloodPressureEvent, AddBloodPressureState> {
  AddBloodPressureBloc() : super(const AddBloodPressureInitial()) {
    on<SelectSysEvent>(_onSelectSysEvent);
    on<SelectDiastolicEvent>(_onSelectDiastolicEvent);
    on<SelectPulseEvent>(_onSelectPulseEvent);
  }
  void _onSelectSysEvent(SelectSysEvent event, Emitter<AddBloodPressureState> emit) {
    final sys = event.newSys;
    BloodPressureType bloodPressureType;

    if (sys < 90) {
      bloodPressureType = BloodPressureType.hypotension;
    } else if (sys >= 90 && sys <= 119) {
      bloodPressureType = BloodPressureType.normal;
    } else if (sys >= 120 && sys <= 129) {
      bloodPressureType = BloodPressureType.elevated;
    } else if (sys >= 130 && sys <= 139) {
      bloodPressureType = BloodPressureType.hypertensionStage1;
    } else if (sys >= 140 && sys <= 180) {
      bloodPressureType = BloodPressureType.hypertensionStage2;
    } else {
      bloodPressureType = BloodPressureType.hypertensionCrisis;
    }
    emit(state.copyWith(
      systolic: sys,
      bloodPressureType: bloodPressureType,
    ));
  }

  void _onSelectDiastolicEvent(SelectDiastolicEvent event, Emitter<AddBloodPressureState> emit) {
    final dia = event.newDiastolic;
    BloodPressureType bloodPressureType = state.bloodPressureType;

    if (dia < 60) {
      bloodPressureType = BloodPressureType.hypotension;
    } else if (dia >= 60 && dia <= 79) {
      final sys = state.systolic;
      if (sys >= 90 && sys <= 119) {
        bloodPressureType = BloodPressureType.normal;
      } else if (sys >= 120 && sys <= 129) {
        bloodPressureType = BloodPressureType.elevated;
      }
    } else if (dia >= 80 && dia <= 89) {
      bloodPressureType = BloodPressureType.hypertensionStage1;
    } else if (dia >= 90 && dia <= 120) {
      bloodPressureType = BloodPressureType.hypertensionStage2;
    } else {
      bloodPressureType = BloodPressureType.hypertensionCrisis;
    }
    emit(state.copyWith(
      diastolic: dia,
      bloodPressureType: bloodPressureType,
    ));
  }

  void _onSelectPulseEvent(SelectPulseEvent event, Emitter<AddBloodPressureState> emit) {
    emit(state.copyWith(pulse: event.newPulse));
  }
}
