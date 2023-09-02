import 'package:azkar_app/cubits/azkar_cubit/azkar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/add_button_action.dart';
import 'package:flutter/material.dart';
import '../widgets/azkar_view_body.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                ),
                context: context,
                builder: (context) {
                  return const AddButtonAction();
                });
          },
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.add,
            size: 36,
          ),
        ),
        body: const AzkarViewBody(),
      ),
    );
  }
}
