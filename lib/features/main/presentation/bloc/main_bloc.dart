import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<ChangeTabIndexEvent>(_onChangeTabIndexEvent);
  }

  void _onChangeTabIndexEvent(ChangeTabIndexEvent event, Emitter<MainState> emit) {
    emit(
      state.copyWith(currentIndex: event.index),
    );
  }
}
