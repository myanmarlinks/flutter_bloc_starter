import 'package:meta/meta.dart';

@immutable
abstract class GreetState {
  final String greet;
  GreetState(this.greet);
}

class InitialGreetState extends GreetState {
  InitialGreetState(String greet) : super(greet);

}

class HowdyGreetState extends GreetState {
  HowdyGreetState(String greet) : super(greet);

}

class WhatUpGreetState extends GreetState {
  WhatUpGreetState(String greet) : super(greet);
}

class YouAreRockGreetState extends GreetState {
  YouAreRockGreetState(String greet) : super(greet);

}