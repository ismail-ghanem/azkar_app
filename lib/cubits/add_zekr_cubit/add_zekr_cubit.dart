import 'package:azkar_app/models/azkar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_zekr_state.dart';

class AddZekrCubit extends Cubit<AddZekrState> {
  AddZekrCubit() : super(AddZekrInitial());

  addZekr(AzkarModel zekr) {}
}
