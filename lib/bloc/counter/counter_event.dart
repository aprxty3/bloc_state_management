// enum CounterEvent { increment, decrement }

class CounterEvent {
  int value;
  CounterEvent(this.value);
}

class DecrementCounter extends CounterEvent {
  DecrementCounter(int value) : super(value);
}

class IncrementCounter extends CounterEvent {
  IncrementCounter(int value) : super(value);
}
