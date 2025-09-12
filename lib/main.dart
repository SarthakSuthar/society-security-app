import 'package:flutter/material.dart';
import 'package:society_security_app/Screens/Home/UI/home_screen.dart';
import 'package:society_security_app/Screens/Login/ui/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  //...
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Society Security App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeScreen(),
      home: const LoginScreen(),
    );
  }
}
