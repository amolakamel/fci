import 'package:fci/app/di.dart';
import 'package:fci/presentation/login/cupit/login%20cupit.dart';
import 'package:fci/presentation/resources/app_router.dart';
import 'package:fci/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class MyApp extends StatelessWidget {
  MyApp._internal(); // named constructor

  int? appState = 0;

  static final MyApp _instance =
  MyApp._internal(); // single instance or singleton

  factory MyApp() =>
      _instance; // kol ma andah 3la al class ycareat al singleton

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,

      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
    );
  }
}
