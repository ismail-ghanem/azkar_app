import 'package:azkar_app/const.dart';
import 'package:azkar_app/models/azkar_model.dart';
import 'package:azkar_app/views/azkar_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kAzkarBox);
  Hive.registerAdapter(AzkarModelAdapter());
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Cairo', brightness: Brightness.dark),
      home: const AzkarView(),
    );
  }
}
