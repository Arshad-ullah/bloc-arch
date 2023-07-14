part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class IncrementState extends CounterState {
  int value;
  IncrementState({required this.value});
}

class LoadingState extends CounterState
{
  
}

class StringState extends CounterState {
  List nameList = [];
  StringState({required this.nameList});
}
