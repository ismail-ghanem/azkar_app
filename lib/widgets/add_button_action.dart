import 'package:flutter/material.dart';

class AddButtonAction extends StatelessWidget {
  const AddButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 38,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textDirection: TextDirection.rtl,
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintTextDirection: TextDirection.rtl,
        hintText: 'أكتب الذكر هنا',
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
