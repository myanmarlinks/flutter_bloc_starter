import 'package:meta/meta.dart';

@immutable
abstract class GreetEvent {}

class HowdyGreetEvent extends GreetEvent {}

class WhatUpGreetEvent extends GreetEvent {}

class YouAreRockGreetEvent extends GreetEvent {}
