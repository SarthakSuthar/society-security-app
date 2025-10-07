import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:society_security_app/app_constants/app_blocs.dart';
import 'package:society_security_app/app_constants/app_routes.dart';
import 'package:society_security_app/app_constants/theme/app_theme.dart';
import 'package:society_security_app/app_constants/theme/bloc/theme_bloc.dart';
import 'package:society_security_app/screens/home/ui/home_screen.dart';
import 'package:society_security_app/screens/login/bloc/auth_bloc.dart';
import 'package:society_security_app/screens/login/ui/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:society_security_app/firebase_options.dart';
import 'package:society_security_app/screens/splash/splash_screen.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // // Ideal time to initialize
  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  //...
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppBlocs.allBlocs,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Society Security App',
            initialRoute: AppRoutes.splash,
            onGenerateRoute: AppRoutes.generateRoute,
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
          );
        },
      ),
    );
  }
}
