// counter_state.dart
abstract class CounterState {
  final int counterValue;
  const CounterState(this.counterValue);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(1); // Initial value
}

class CounterUpdated extends CounterState {
  const CounterUpdated(int counterValue) : super(counterValue);
}

