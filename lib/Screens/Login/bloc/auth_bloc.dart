import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AppStarted>(_onAppStarted);
    on<LoggedIn>(_onLoggedIn);
    on<LoggeOut>(_onLgedOut);
  }

  Future<void> _onAppStarted(AppStarted event, Emitter<AuthState> emit) async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay
    // here check local storage / secure storage for token
    final hasToken = false; // change to real check

    if (hasToken) {
      emit(const Authenticated("123")); // pass userId or user model
    } else {
      emit(Unauthenticated());
    }
  }

  Future<void> _onLoggedIn(LoggedIn event, Emitter<AuthState> emit) async {
    emit(const Authenticated("123"));
  }

  Future<void> _onLgedOut(LoggeOut event, Emitter<AuthState> emit) async {
    emit(Unauthenticated());
  }
}
