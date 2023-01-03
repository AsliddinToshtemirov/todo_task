// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'theme_bloc_bloc.dart';

class ThemeBlocState extends Equatable {
  final bool switchValue;
  const ThemeBlocState({required this.switchValue});

  @override
  List<Object> get props => [switchValue];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'switchValue': switchValue,
    };
  }

  factory ThemeBlocState.fromMap(Map<String, dynamic> map) {
    return ThemeBlocState(
      switchValue: map['switchValue'] as bool,
    );
  }
}

class ThemeBlocInitial extends ThemeBlocState {
  const ThemeBlocInitial({required super.switchValue});
}
