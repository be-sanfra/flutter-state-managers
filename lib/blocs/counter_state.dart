part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int value;

  const CounterState(this.value);

  @override
  List<Object> get props => [value];
}

class CounterInitState extends CounterState {
  const CounterInitState() : super(0);
}

class CounterResultState extends CounterState {
  const CounterResultState(int value) : super(value);
}
