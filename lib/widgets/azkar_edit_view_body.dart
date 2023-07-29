import '../widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AzkarEditViewBody extends StatelessWidget {
  const AzkarEditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            customAppBarTitle: 'تعديل الذكر',
            customAppBarIcon: Icons.check,
          ),
        ],
      ),
    );
  }
}
