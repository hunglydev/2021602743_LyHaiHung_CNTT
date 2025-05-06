enum LoadingState {
  pure,
  loading,
  finish,
  error,
}

extension LoadingStateExtension on LoadingState {
  bool get isLoading => this == LoadingState.loading;
  bool get isFinish => this == LoadingState.finish;
  bool get isError => this == LoadingState.error;
}
