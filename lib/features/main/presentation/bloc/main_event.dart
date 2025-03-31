part of 'main_bloc.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();
}

class ChangeTabIndexEvent extends MainEvent {
  final int index;
  const ChangeTabIndexEvent({required this.index});
  @override
  List<Object?> get props => [
        index,
      ];
}
