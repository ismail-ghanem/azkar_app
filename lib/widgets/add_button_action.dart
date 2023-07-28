import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddButtonAction extends StatelessWidget {
  const AddButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 38,
            ),
            CustomTextField(
              hint: 'أكتب الذكر هنا',
              maxlines: 5,
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextField(
              hint: 'العدد',
            ),
            SizedBox(height: 100),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}