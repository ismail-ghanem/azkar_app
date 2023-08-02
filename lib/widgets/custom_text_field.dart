import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxlines = 1,
      this.onSaved,
      this.myAutovalidateMode,
      this.keyboardType});
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? myAutovalidateMode;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onSaved: onSaved,
      validator: myAutovalidateMode,
      textDirection: TextDirection.rtl,
      cursorColor: Colors.green,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white70, fontSize: 16),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.green),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
