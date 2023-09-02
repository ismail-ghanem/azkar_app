import 'package:azkar_app/models/azkar_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());
}
