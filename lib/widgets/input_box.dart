import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  const InputBox({
    super.key,
    required this.contrller, // Make this field final
    required this.hintText,
    this.minLines,
  });

  final TextEditingController contrller;
  final String hintText;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: contrller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        labelText: hintText,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        alignLabelWithHint: true,
      ),
      minLines: minLines ?? 1,
      maxLines: minLines != null ? minLines! + 2 : 1,
    );
  }
}
