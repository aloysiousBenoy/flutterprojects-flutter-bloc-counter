class CounterState{
  int counter;

  // CounterState(){
  //   counter=0;
  // }
 
  CounterState._();
  factory CounterState.intial(){
    print('infactory');
    return CounterState._()..counter=1; }
}