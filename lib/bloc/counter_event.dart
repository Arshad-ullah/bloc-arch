part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncreamentEvent extends CounterEvent {
  int value;
  IncreamentEvent({required this.value});
}

class DecrementEvent extends CounterEvent {
  int value;
  DecrementEvent({required this.value});
}

class StringEvent extends CounterEvent {
  String txt;
  StringEvent({required this.txt});
}
