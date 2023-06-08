import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

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

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(error, trace) {
    print(error);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}
