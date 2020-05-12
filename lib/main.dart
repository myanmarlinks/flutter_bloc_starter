import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/bloc/greet/bloc.dart';
import 'package:test_one/bloc/simple_bloc_delegate.dart';
import 'package:test_one/ui/my_home.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = "Test App One";
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GreetBloc>(
      create: (context) => GreetBloc(),
      child: MaterialApp(
        title: _title,
        home: MyHome(),
      ),
    );
  }
}

