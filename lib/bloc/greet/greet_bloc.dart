import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class GreetBloc extends Bloc<GreetEvent, GreetState> {

  static const List<String> greetList = ["Howdy!", "What's Up!", "You're Rock!"];

  @override
  GreetState get initialState => InitialGreetState();

  @override
  Stream<GreetState> mapEventToState(
    GreetEvent event,
  ) async* {
    yield InitialGreetState();
    if(event is HowdyGreetEvent) {
      final String greet = await getData(0);
      yield HowdyGreetState(greet);
    }
    if(event is WhatUpGreetEvent) {
      final String greet = await getData(1);
      yield WhatUpGreetState(greet);
    }
    if(event is YouAreRockGreetEvent) {
      try {
        final String greet = await getError(2);
        yield YouAreRockGreetState(greet);
      } on Exception {
        yield ErrorGreetState();
      }

    }
  }

  Future<String> getData(int index) async {
    await Future.delayed(Duration(seconds: 1));
    return greetList[index];
  }

  Future<String> getError(int index) async {
    throw Exception("Error");
  }
}
