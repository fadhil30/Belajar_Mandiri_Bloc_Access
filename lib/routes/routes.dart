import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/404/404.dart';
import 'package:latihan_bloc/other/other.dart';

import '../bloc/counter.dart';
import '../home/home.dart';

class AppRouter {
  final Counter mycounter = Counter();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) =>
              BlocProvider.value(value: mycounter, child: HomePage()),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) =>
              BlocProvider.value(value: mycounter, child: OtherPage()),
        );

      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
