import 'package:azkar_app/const.dart';
import 'package:azkar_app/models/azkar_model.dart';
import 'package:azkar_app/simple_bloc_observer.dart';
import 'package:azkar_app/views/azkar_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(AzkarModelAdapter());
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(AzkarModelAdapter());
  }
  //Hive.registerAdapter(AzkarModelAdapter());
  await Hive.openBox<AzkarModel>(kAzkarBox);
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
