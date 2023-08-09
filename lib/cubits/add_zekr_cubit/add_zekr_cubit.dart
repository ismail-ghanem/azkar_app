import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_zekr_state.dart';

class AddZekrCubit extends Cubit<AddZekrState> {
  AddZekrCubit() : super(AddZekrInitial());
}
