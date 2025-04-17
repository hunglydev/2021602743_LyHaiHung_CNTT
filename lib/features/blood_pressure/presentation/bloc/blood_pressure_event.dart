part of 'blood_pressure_bloc.dart';

sealed class BloodPressureEvent extends Equatable {
  const BloodPressureEvent();
}

class FilterBloodPressure extends BloodPressureEvent{
  const FilterBloodPressure();
  @override
  List<Object?> get props => [];

}
