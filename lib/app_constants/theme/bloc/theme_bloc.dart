import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeMode: ThemeMode.light)) {
    on<ThemeEvent>((event, emit) {
      final isLight = state.themeMode == ThemeMode.light;
      emit(
        state.copyWith(themeMode: isLight ? ThemeMode.dark : ThemeMode.light),
      );
    });
  }
}
