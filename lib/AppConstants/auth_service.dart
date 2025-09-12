import 'package:firebase_auth/firebase_auth.dart';
import 'package:society_security_app/AppConstants/app_utils.dart';

class AuthService {
  Future<bool> signup(String email, String password) async {
    try {
      // Use Firebase Auth to create a new user
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      showlog("User details on firebase auth ----> $userCredential");

      // If signup is successful, you can navigate the user
      // to the home screen or show a success message.
      return true;
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase errors
      String message;
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = 'An error occurred. Please try again.';
      }

      showlog("Error on firebase auth service ---> $message");
      return false;
    }
  }
}
