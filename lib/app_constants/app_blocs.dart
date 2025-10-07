import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:society_security_app/app_constants/theme/bloc/theme_bloc.dart';
import 'package:society_security_app/screens/login/bloc/auth_bloc.dart';

class AppBlocs {
  static final List<BlocProvider> allBlocs = [
    BlocProvider<ThemeBloc>(create: (context) => ThemeBloc()),
    BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
  ];
}
