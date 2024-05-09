import 'package:fci/app/app.dart';
import 'package:fci/app/di.dart';
import 'package:flutter/material.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // initialized all instance then start app
  await initAppModule();
  runApp(MyApp());
}