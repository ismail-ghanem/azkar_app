import 'package:azkar_app/models/azkar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../const.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());
  List<AzkarModel>? azkar;
  fetchAzkar() async {
    var azkarBox = Hive.box<AzkarModel>(kAzkarBox);

    azkar = azkarBox.values.toList();
  }
}
