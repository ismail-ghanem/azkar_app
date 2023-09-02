part of 'azkar_cubit.dart';

@immutable
abstract class AzkarState {}

class AzkarInitial extends AzkarState {}

class AzkarLoading extends AzkarState {}

class AzkarSuccess extends AzkarState {
  final List<AzkarModel> azkar;

  AzkarSuccess(this.azkar);
}

class AzkarFailure extends AzkarState {
  final String errMessage;

  AzkarFailure(this.errMessage);
}
