import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:society_security_app/screens/community/ui/community_screen.dart';
import 'package:society_security_app/screens/home/ui/home_screen.dart';
import 'package:society_security_app/screens/login/ui/login_screen.dart';
import 'package:society_security_app/screens/profile/ui/profile.dart';
import 'package:society_security_app/screens/signup/signup_screen.dart';
import 'package:society_security_app/screens/splash/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String community = '/community';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case community:
        return MaterialPageRoute(builder: (_) => const CommunityScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
