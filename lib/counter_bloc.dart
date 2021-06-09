import 'package:bloc/bloc.dart';
import 'package:counter_flutter_bloc/counter_event.dart';
import 'package:counter_flutter_bloc/counter_state.dart';

// State is being stored as primitive,
// adding a state class can be avoided.
// This simplifies the code.

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    print('in map');
    if (event is IncrementEvent) {
      yield CounterState(state.counter + 1);
    } else
      throw UnimplementedError();
  }
}
