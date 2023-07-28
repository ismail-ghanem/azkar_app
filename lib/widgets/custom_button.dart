import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.green),
      child: const Center(
        child: Text(
          'إضافة',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
