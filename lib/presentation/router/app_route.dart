import 'package:counter_app_bloc/blocs/counter_bloc.dart';
import 'package:counter_app_bloc/main.dart';
import 'package:counter_app_bloc/presentation/screens/FirstScreen.dart';
import 'package:counter_app_bloc/presentation/screens/SecondScreen.dart';
import 'package:counter_app_bloc/presentation/screens/ThirdScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoute {
  CounterBloc counterBloc = new CounterBloc();
  AppRoute();
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<CounterBloc>.value(
                  value: counterBloc,
                  child: FirstScreen(),
                ));
        break;
      case '/secondScreen':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<CounterBloc>.value(
                  value: counterBloc,
                  child: SecondScreen(),
                ));
        break;
      case '/thirdScreen':
        return MaterialPageRoute(
            builder: (_) => BlocProvider<CounterBloc>.value(
                  value: counterBloc,
                  child: ThirdScreen(),
                ));
        break;
      default:
    }
    // switch (routeSettings.name) {
    //   case '/':
    //     return MaterialPageRoute(
    //         builder: (_) => BlocProvider<CounterBloc>(
    //               create: (BuildContext context) => CounterBloc(),
    //               child: FirstScreen(),
    //             ));
    //     break;
    //   case '/secondScreen':
    //     return MaterialPageRoute(
    //         builder: (_) => BlocProvider<CounterBloc>(
    //               create: (BuildContext context) => CounterBloc(),
    //               child: SecondScreen(),
    //             ));
    //     break;
    //   case '/thirdScreen':
    //     return MaterialPageRoute(
    //         builder: (_) => BlocProvider<CounterBloc>(
    //               create: (BuildContext context) => CounterBloc(),
    //               child: ThirdScreen(),
    //             ));
    //   default:
    // }
  }
}
