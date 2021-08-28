import 'package:counter_app_bloc/presentation/router/app_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();
  AppRoute appRoute = AppRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      onGenerateRoute: appRoute.onGenerateRoute,
    );
  }
}
