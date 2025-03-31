part of 'app_bloc.dart';

final class AppState extends Equatable {
  final String version;
  final String buildNumber;
  final LoadingState loadingState;
  final String errorMessage;
  final bool isLightMode;
  final Locale locale;
  final int localeIndex;
  final UserModel userData;

  const AppState({
    required this.version,
    required this.buildNumber,
    required this.isLightMode,
    required this.locale,
    required this.localeIndex,
    required this.userData,
    this.loadingState = LoadingState.pure,
    this.errorMessage = '',
  });

  factory AppState.init() {
    return AppState(
      version: '1.0.0',
      buildNumber: '1',
      loadingState: LoadingState.pure,
      userData: UserModel.init(),
      errorMessage: '',
      isLightMode: true,
      locale: const Locale('vi', "VI"),
      localeIndex: 1,
    );
  }

  bool get isLoading => loadingState == LoadingState.loading;

  bool get isSuccess => loadingState == LoadingState.finished;

  bool get isError => loadingState == LoadingState.error;

  AppState copyWith({
    String? version,
    String? buildNumber,
    LoadingState? loadingState,
    String? errorMessage,
    bool? isLightMode,
    Locale? locale,
    int? localeIndex,
    int? currentPage,
    UserModel? userData,
  }) {
    return AppState(
      version: version ?? this.version,
      buildNumber: buildNumber ?? this.buildNumber,
      loadingState: loadingState ?? this.loadingState,
      errorMessage: errorMessage ?? this.errorMessage,
      isLightMode: isLightMode ?? this.isLightMode,
      locale: locale ?? this.locale,
      localeIndex: localeIndex ?? this.localeIndex,
      userData: userData ?? this.userData,
    );
  }

  @override
  List<Object> get props => [
    version,
    buildNumber,
    loadingState,
    errorMessage,
    isLightMode,
    locale,
    userData,
    localeIndex,
  ];
}
