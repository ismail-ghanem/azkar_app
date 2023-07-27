import 'package:azkar_app/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomIcon(),
        Spacer(),
        Text(
          'الأذكار',
          style: TextStyle(fontSize: 36),
        ),
      ],
    );
  }
}
