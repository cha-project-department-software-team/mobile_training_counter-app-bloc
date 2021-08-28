import 'package:counter_app_bloc/events/counter_event.dart';
import 'package:counter_app_bloc/states/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateRefresh(newNumber: 0));
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterEventIncrease) {
      yield CounterStateRefresh(newNumber: event.currentNumber + 1);
    } else if (event is CounterEventDecrease) {
      yield CounterStateRefresh(newNumber: event.currentNumber - 1);
    }
  }
}
