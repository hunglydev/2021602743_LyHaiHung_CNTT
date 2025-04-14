part of 'blood_pressure_bloc.dart';

class BloodPressureState extends Equatable {
  final LoadingState loadingState;
  final List<BloodPressureEntity>? bloodPressures;
  final List<Map<String, dynamic>>? bloodPressureChartData;
  final BloodPressureRangeEntity range; // Đóng gói các giá trị min/max
  final ChartSelectionEntity chartSelection; // Đóng gói các lựa chọn biểu đồ
  final BloodPressureEntity? selectedPressure;
  final bool isExporting;
  final String? errorMessage;

  const BloodPressureState({
    this.loadingState = LoadingState.pure,
    this.bloodPressures,
    this.bloodPressureChartData,
    this.range = const BloodPressureRangeEntity(),
    this.chartSelection = const ChartSelectionEntity(),
    this.selectedPressure,
    this.isExporting = false,
    this.errorMessage,
  });

  BloodPressureState copyWith({
    LoadingState? loadingState,
    List<BloodPressureEntity>? bloodPressures,
    List<Map<String, dynamic>>? bloodPressureChartData,
    BloodPressureRangeEntity? range,
    ChartSelectionEntity? chartSelection,
    BloodPressureEntity? selectedPressure,
    bool? isExporting,
    String? errorMessage,
  }) {
    return BloodPressureState(
      loadingState: loadingState ?? this.loadingState,
      bloodPressures: bloodPressures ?? this.bloodPressures,
      bloodPressureChartData: bloodPressureChartData ?? this.bloodPressureChartData,
      range: range ?? this.range,
      chartSelection: chartSelection ?? this.chartSelection,
      selectedPressure: selectedPressure ?? this.selectedPressure,
      isExporting: isExporting ?? this.isExporting,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        loadingState,
        bloodPressures,
        bloodPressureChartData,
        range,
        chartSelection,
        selectedPressure,
        isExporting,
        errorMessage,
      ];
}
