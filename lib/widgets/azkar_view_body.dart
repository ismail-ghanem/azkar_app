import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/azkar_list_view.dart';

class AzkarViewBody extends StatelessWidget {
  const AzkarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            customAppBarTitle: 'الأذكار',
            customAppBarIcon: Icons.menu,
          ),
          Expanded(child: AzkarListView()),
        ],
      ),
    );
  }
}
