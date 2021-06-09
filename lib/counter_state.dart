class CounterState {
  // Field is made final to prevent changing it
  // Marking all state fields final is a good practice.
  final int counter;
  CounterState(this.counter) : assert(counter != null);
}
