import 'package:azkar_app/models/azkar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../const.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());
  fetchAzkar() async {
    try {
      var azkarBox = Hive.box<AzkarModel>(kAzkarBox);

      emit(AzkarSuccess(
        azkarBox.values.toList(),
      ));
    } catch (e) {
      emit(AzkarFailure(e.toString()));
    }
  }
}
