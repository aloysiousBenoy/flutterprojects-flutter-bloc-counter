import 'package:bloc/bloc.dart';
import 'package:counter_flutter_bloc/counter_event.dart';

// State is being stored as primitive,
// adding a state class can be avoided.
// This simplifies the code.

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  // CounterState get initialState => CounterState.intial();

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    print('in map');
    if (event is IncrementEvent) {
      print('in increment\n\n');
      yield state + 1;
    } else
      throw UnimplementedError();
  }
}
