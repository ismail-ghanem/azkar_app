import 'package:azkar_app/const.dart';
import 'package:azkar_app/models/azkar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_zekr_state.dart';

class AddZekrCubit extends Cubit<AddZekrState> {
  AddZekrCubit() : super(AddZekrInitial());

  addZekr(AzkarModel zekr) async {
    emit(AddZekrLoading());
    try {
      var azkarBox = Hive.box<AzkarModel>(kAzkarBox);
      await azkarBox.add(zekr);
      emit(AddZekrSuccess());
    } catch (e) {
      emit(AddZekrFailure(e.toString()));
    }
  }
}
