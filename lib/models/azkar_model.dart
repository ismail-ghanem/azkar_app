import 'package:hive/hive.dart';

part 'azkar_model.g.dart';

@HiveType(typeId: 0)
class AzkarModel extends HiveObject {
  @HiveField(0)
  final String zekr;
  @HiveField(1)
  final int numOfZekr;

  AzkarModel({
    required this.zekr,
    required this.numOfZekr,
  });
}
