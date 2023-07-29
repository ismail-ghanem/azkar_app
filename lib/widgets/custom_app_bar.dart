import '../widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.customAppBarTitle,
      required this.customAppBarIcon});
  final String customAppBarTitle;
  final IconData customAppBarIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIcon(
          appBarIcon: customAppBarIcon,
        ),
        const Spacer(),
        Text(
          customAppBarTitle,
          style: const TextStyle(fontSize: 36),
        ),
      ],
    );
  }
}
