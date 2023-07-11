import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  List nameList = [];
  TextEditingController textEditingController = TextEditingController();
  CounterBloc() : super(CounterInitial()) {
    on<StringEvent>((event, emit) {
      if (nameList.contains(event.txt)) {
        print("Already present");
      } else {
        nameList.add(event.txt);
        emit(StringState(nameList: nameList));
      }
    });
  }
}
