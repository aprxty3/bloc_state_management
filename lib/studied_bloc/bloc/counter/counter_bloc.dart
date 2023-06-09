import 'package:bloc/bloc.dart';

import 'counter_event.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounter>(
      (event, emit) {
        emit((state + 1) * event.value);
      },
    );
    on<DecrementCounter>((event, emit) => emit((state - 1) * event.value));
  }
}
