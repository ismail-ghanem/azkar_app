import 'package:azkar_app/models/azkar_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/add_zekr_cubit/add_zekr_cubit.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddButtonAction extends StatelessWidget {
  const AddButtonAction({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddZekrCubit(),
      child: BlocConsumer<AddZekrCubit, AddZekrState>(
        listener: (context, state) {
          if (state is AddZekrFailure) {
            debugPrint('failed ${state.errMessage}');
          }
          if (state is AddZekrSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddZekrLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: AddNewForm(),
              ),
            ),
          );
        },
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
  String? zekrText;
  String? zekrNum;

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
              zekrNum = value.toString();
            },
            myAutovalidateMode: (value) {
              if (value?.isEmpty ?? true) {
                return 'برجاء ادخال العدد';
              }
              return null;
            },
          ),
          const SizedBox(height: 100),
          BlocBuilder<AddZekrCubit, AddZekrState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddZekrLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var zekrModel = AzkarModel(
                      zekr: zekrText!,
                      numOfZekr: zekrNum!,
                    );
                    BlocProvider.of<AddZekrCubit>(context).addZekr(zekrModel);
                  } else {
                    myAutovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
