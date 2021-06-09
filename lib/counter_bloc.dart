import 'package:bloc/bloc.dart';
import 'package:counter_flutter_bloc/counter_event.dart';
import 'package:counter_flutter_bloc/counter_state.dart';

// Here the state is being stored in a state class
// The state class stores the count in an integer field

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    print('in map');
    if (event is IncrementEvent) {
      /// the "state" field of bloc class is a getter. It cannnot be used as shown below
      /// state = CounterState(somevalue)
      /// instead state variable should be used to access the current state and mapEvenToState function should yield the new state as shown below.
      yield CounterState(state.counter + 1);
    } else
      throw UnimplementedError();
  }
}
