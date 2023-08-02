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
        child: AddNewForm(),
      ),
    );
  }
}

class AddNewForm extends StatefulWidget {
  const AddNewForm({
    super.key,
  });

  @override
  State<AddNewForm> createState() => _AddNewFormState();
}

class _AddNewFormState extends State<AddNewForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode myAutovalidateMode = AutovalidateMode.disabled;
  String? zekrText, zekrNum;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: myAutovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 38,
          ),
          CustomTextField(
            hint: 'أكتب الذكر هنا',
            maxlines: 5,
            keyboardType: TextInputType.text,
            onSaved: (value) {
              zekrText = value;
            },
            myAutovalidateMode: (value) {
              if (value?.isEmpty ?? true) {
                return 'برجاء ادخال النص';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          CustomTextField(
            hint: 'العدد',
            keyboardType: TextInputType.number,
            onSaved: (value) {
              zekrNum = value;
            },
            myAutovalidateMode: (value) {
              if (value?.isEmpty ?? true) {
                return 'برجاء ادخال العدد';
              }
              return null;
            },
          ),
          const SizedBox(height: 100),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                myAutovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
