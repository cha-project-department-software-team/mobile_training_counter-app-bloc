import 'package:counter_app_bloc/presentation/router/app_route.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
    enabled: true,
  ));
}

class MyApp extends StatelessWidget {
  MyApp();
  AppRoute appRoute = AppRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      title: "MyApp",
      onGenerateRoute: appRoute.onGenerateRoute,
    );
  }
}
