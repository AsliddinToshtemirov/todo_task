import 'package:equatable/equatable.dart';
import 'package:todo_task/blocs/bloc_exports.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';

class ThemeBlocBloc extends HydratedBloc<ThemeBlocEvent, ThemeBlocState> {
  ThemeBlocBloc() : super(const ThemeBlocInitial(switchValue: false)) {
    on<SwitchOnEvent>((event, emit) {
      emit(const ThemeBlocState(switchValue: true));
    });
    on<SwitchOffEvent>((event, emit) {
      emit(const ThemeBlocState(switchValue: false));
    });
  }

  @override
  ThemeBlocState? fromJson(Map<String, dynamic> json) {
    return ThemeBlocState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeBlocState state) {
    return state.toMap();
  }
}
