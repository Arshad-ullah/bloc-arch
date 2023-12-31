import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  List nameList = [];
  bool isLoading=false;
  TextEditingController textEditingController = TextEditingController();
  CounterBloc() : super(CounterInitial()) {
  

  
    Future.delayed(Duration(seconds: 3),()
    {
    isLoading=true;
      on<StringEvent>((event, emit) {
      if (nameList.contains(event.txt)) {
        print("Already present");
      } else {
        nameList.add(event.txt);
        emit(StringState(nameList: nameList));
      }
    });

    on<StringDeleteEvent>((deleteEvent));
    });
    
  }
  void deleteEvent(StringDeleteEvent event, Emitter<CounterState> emit) {
    nameList.remove(event.txt.toString());
    emit(StringState(nameList: nameList));
  }
}
