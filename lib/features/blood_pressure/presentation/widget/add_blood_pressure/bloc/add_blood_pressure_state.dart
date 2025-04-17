part of 'add_blood_pressure_bloc.dart';

class AddBloodPressureState extends Equatable {
  final String stringBloodPrDate;
  final String stringBloodPrTime;
  final BloodPressureType bloodPressureType;
  final int systolic;
  final int diastolic;
  final int pulse;
  final DateTime? bloodPressureDate;
  final LoadingState loadingState;
  final BloodPressureEntity? bloodPressure;

  const AddBloodPressureState({
    this.stringBloodPrDate = '',
    this.stringBloodPrTime = '',
    this.bloodPressureType = BloodPressureType.normal,
    this.systolic = 100,
    this.diastolic = 70,
    this.pulse = 40,
    this.loadingState = LoadingState.pure,
    this.bloodPressureDate,
    this.bloodPressure,
  });

  AddBloodPressureState copyWith(
      {String? stringBloodPrDate,
      String? stringBloodPrTime,
      BloodPressureType? bloodPressureType,
      int? systolic,
      int? diastolic,
      int? pulse,
      DateTime? bloodPressureDate,
      LoadingState? loadingState,
      BloodPressureEntity? bloodPressure}) {
    return AddBloodPressureState(
      stringBloodPrDate: stringBloodPrDate ?? this.stringBloodPrDate,
      stringBloodPrTime: stringBloodPrTime ?? this.stringBloodPrTime,
      bloodPressureType: bloodPressureType ?? this.bloodPressureType,
      systolic: systolic ?? this.systolic,
      diastolic: diastolic ?? this.diastolic,
      pulse: pulse ?? this.pulse,
      bloodPressureDate: bloodPressureDate ?? this.bloodPressureDate,
      loadingState: loadingState ?? this.loadingState,
      bloodPressure: bloodPressure ?? this.bloodPressure,
    );
  }

  @override
  List<Object?> get props => [
        stringBloodPrDate,
        stringBloodPrTime,
        bloodPressureType,
        systolic,
        diastolic,
        pulse,
        loadingState,
        bloodPressureDate,
        bloodPressure,
      ];
}

class AddBloodPressureInitial extends AddBloodPressureState {
  const AddBloodPressureInitial()
      : super(
          stringBloodPrDate: '',
          stringBloodPrTime: '',
          bloodPressureType: BloodPressureType.normal,
          systolic: 100,
          diastolic: 70,
          pulse: 40,
          loadingState: LoadingState.pure,
        );
}
