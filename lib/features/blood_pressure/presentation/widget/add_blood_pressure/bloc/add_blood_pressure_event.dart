part of 'add_blood_pressure_bloc.dart';

sealed class AddBloodPressureEvent extends Equatable {
  const AddBloodPressureEvent();
}

class SelectSysEvent extends AddBloodPressureEvent {
  final int newSys;
  const SelectSysEvent({required this.newSys});

  @override
  List<Object?> get props => [
        newSys,
      ];
}

class SelectDiastolicEvent extends AddBloodPressureEvent {
  final int newDiastolic;
  const SelectDiastolicEvent({required this.newDiastolic});
  @override
  List<Object?> get props => [
        newDiastolic,
      ];
}

class SelectPulseEvent extends AddBloodPressureEvent {
  final int newPulse;
  const SelectPulseEvent({required this.newPulse});
  @override
  List<Object?> get props => [
        newPulse,
      ];
}
