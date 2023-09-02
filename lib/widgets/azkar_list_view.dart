import 'package:azkar_app/cubits/azkar_cubit/azkar_cubit.dart';
import 'package:azkar_app/models/azkar_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/azkar_card.dart';
import 'package:flutter/material.dart';

class AzkarListView extends StatelessWidget {
  const AzkarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AzkarCubit, AzkarState>(
      builder: (context, state) {
        List<AzkarModel> azkar = BlocProvider.of<AzkarCubit>(context).azkar!;
        return ListView.builder(
            itemCount: azkar.length,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: AzkarCard(),
              );
            });
      },
    );
  }
}
