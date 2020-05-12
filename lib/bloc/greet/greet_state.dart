import 'package:meta/meta.dart';

@immutable
abstract class GreetState {}

class InitialGreetState extends GreetState {}

class HowdyGreetState extends GreetState {
  final String howdyGreet;
  HowdyGreetState(this.howdyGreet);
}

class WhatUpGreetState extends GreetState {
  final String whatUpGreet;
  WhatUpGreetState(this.whatUpGreet);
}

class YouAreRockGreetState extends GreetState {
  final String youAreRockGreet;
  YouAreRockGreetState(this.youAreRockGreet);
}