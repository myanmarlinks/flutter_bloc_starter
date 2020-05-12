import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class GreetBloc extends Bloc<GreetEvent, GreetState> {

  static const List<String> greetList = ["Hello World!", "Howdy!", "What's Up!", "You're Rock!"];

  @override
  GreetState get initialState => InitialGreetState(greetList[0]);

  @override
  Stream<GreetState> mapEventToState(
    GreetEvent event,
  ) async* {
    if(event is HowdyGreetEvent) {
      yield HowdyGreetState(greetList[1]);
    }
    if(event is WhatUpGreetEvent) {
      yield WhatUpGreetState(greetList[2]);
    }
    if(event is YouAreRockGreetEvent) {
      yield YouAreRockGreetState(greetList[3]);
    }
  }
}
