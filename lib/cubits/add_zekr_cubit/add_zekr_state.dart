part of 'add_zekr_cubit.dart';

@immutable
abstract class AddZekrState {}

class AddZekrInitial extends AddZekrState {}

class AddZekrLoading extends AddZekrState {}

class AddZekrSuccess extends AddZekrState {}

class AddZekrFailure extends AddZekrState {
  final String errMessage;

  AddZekrFailure(this.errMessage);
}
