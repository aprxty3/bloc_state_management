import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class Counter extends Cubit<int> {
  Counter({this.initData = 0}) : super(0);

  int initData;

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}