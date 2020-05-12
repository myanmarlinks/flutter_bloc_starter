import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class GreetBloc extends Bloc<GreetEvent, GreetState> {

  static const List<String> greetList = ["Howdy!", "What's Up!", "You're Rock!"];

  @override
  GreetState get initialState => InitialGreetState("Hello World!");

  @override
  Stream<GreetState> mapEventToState(
    GreetEvent event,
  ) async* {
    if(event is HowdyGreetEvent) {
      final String greet = await getData(0);
      yield HowdyGreetState(greet);
    }
    if(event is WhatUpGreetEvent) {
      final String greet = await getData(1);
      yield WhatUpGreetState(greet);
    }
    if(event is YouAreRockGreetEvent) {
      final String greet = await getData(2);
      yield YouAreRockGreetState(greet);
    }
  }

  Future getData(int index) async {
    return greetList[index];
  }
}
