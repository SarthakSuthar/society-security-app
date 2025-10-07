import 'package:flutter/material.dart';
import 'package:society_security_app/widgets/input_box.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController contrller = TextEditingController();
    String hintText = "Title";

    return Center(
      child: InputBox(contrller: contrller, hintText: hintText),
    );
  }
}
