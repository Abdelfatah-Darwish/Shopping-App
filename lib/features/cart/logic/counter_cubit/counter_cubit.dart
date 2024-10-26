// counter_cubit.dart
import 'package:bloc/bloc.dart';
import 'counter_state.dart'; // Import the state

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  void increment() => emit(CounterUpdated(state.counterValue + 1));

  void decrement() {
    if (state.counterValue > 1) {
      emit(CounterUpdated(state.counterValue - 1));
    }
  }
}
