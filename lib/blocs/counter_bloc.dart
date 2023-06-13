import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // CounterBloc() : super(const CounterInitState()) {
  //   on<CounterEvent>((event, emit) {
  //
  //   });
  // }
  CounterBloc() : super(const CounterInitState());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event.runtimeType) {
      case CounterIncrementEvent:
        int value = state.value;
        value++;
        yield CounterResultState(value);
        break;
      default:
    }
  }

  void increment() => add(CounterIncrementEvent());
}
