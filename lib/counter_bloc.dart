import 'package:bloc/bloc.dart';
import 'package:counter_flutter_bloc/counter_event.dart';
import 'package:counter_flutter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

 CounterState get initialState => CounterState.intial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    print('in map');
    if (event is IncrementEvent){
       print('in increment\n\n');
       yield state..counter+= 1;
    }
    
   else  throw UnimplementedError();
  }

 
}