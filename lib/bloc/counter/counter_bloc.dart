import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>(
      (event, emit) {
        switch (event) {
          case CounterEvent.increment:
            emit(state + 1);
            break;
          case CounterEvent.decrement:
            emit(state - 1);
            break;
        }
      },
    );
  }
}
